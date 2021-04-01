# frozen_string_literal: true

dir_go, dir_go_owner, dir_go_group =
  case system.platform[:family]
  when 'bsd'
    %w[/usr/local/go1.14.2.freebsd-amd64/go root wheel]
  when 'windows'
    %w[C:/golang/go1.14.2.windows-amd64/go BUILTIN\\Administrators excluded_by_unless]
  else
    %w[/usr/local/go1.14.2.linux-amd64/go root root]
  end

control 'golang tar archive' do
  impact 1.0
  title 'should be installed'
  desc 'Ensure golang tarball archive was extracted correctly'

  describe file(dir_go) do
    it { should be_directory }
    it { should be_owned_by dir_go_owner }
    unless %w[windows].include?(platform[:family])
      it { should be_grouped_into dir_go_group }
      its('mode') { should cmp '0755' }
    end
  end
end

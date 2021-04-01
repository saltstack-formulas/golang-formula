# frozen_string_literal: true

dir_go, dir_go_group =
  case system.platform[:family]
  when 'bsd'
    %w[/usr/local/go1.14.2.freebsd-amd64/go wheel]
  else
    %w[/usr/local/go1.14.2.linux-amd64/go root]
  end

control 'golang tar archive' do
  impact 1.0
  title 'should be installed'
  desc 'Ensure golang tarball archive was extracted correctly'

  describe file(dir_go) do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into dir_go_group }
    its('mode') { should cmp '0755' }
  end
end

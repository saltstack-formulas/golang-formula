# frozen_string_literal: true

golang_exec_file, golang_exec_owner =
  case system.platform[:family]
  when 'windows'
    %w[C:/Go/bin/go.exe NT\ AUTHORITY\\SYSTEM]
  else
    %w[/etc/default/golang.sh root]
  end

golang_exec_group =
  case system.platform[:family]
  when 'bsd'
    'wheel'
  else
    'root'
  end

control 'golang configuration' do
  title 'should match desired configuration'

  describe file(golang_exec_file) do
    it { should be_file }
    it { should be_owned_by golang_exec_owner }
    unless %w[windows].include?(platform[:family])
      it { should be_grouped_into golang_exec_group }
      its('mode') { should cmp '0644' }
    end
  end
end

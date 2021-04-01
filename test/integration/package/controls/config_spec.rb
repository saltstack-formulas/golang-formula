# frozen_string_literal: true

golang_sh_group =
  case system.platform[:family]
  when 'bsd'
    'wheel'
  else
    'root'
  end

control 'golang configuration' do
  title 'should match desired configuration'

  describe file('/etc/default/golang.sh') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into golang_sh_group }
    its('mode') { should cmp '0644' }
  end
end

# frozen_string_literal: true

control 'template configuration environment' do
  title 'should match desired lines'

  describe file('/etc/default/golang.sh') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its('content') { should include 'Your changes may be overwritten' }
    # rubocop:disable LineLength
    its('content') { should include 'export GOROOT=/usr/local/go1.14.2.linux-amd64' }
    its('content') { should include 'export GOPATH=/usr/local/golang/packages' }
    its('content') { should include 'export PATH=${PATH}:/usr/local/go1.14.2.linux-amd64/go/bin' }
    # rubocop:enable LineLength
  end
end

control 'template configuration environment' do
  title 'should match desired lines'

  describe file('/etc/default/golang.sh') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its('content') { should include 'Your changes may be overwritten' }
    its('content') { should include 'export GOROOT=/usr/local/go1.10.1.linux-amd64' }
    its('content') { should include 'export GOPATH=/usr/local/golang/packages' }
    its('content') { should include 'export PATH=${PATH}:/usr/local/go1.10.1.linux-amd64/go/bin' }
  end
end

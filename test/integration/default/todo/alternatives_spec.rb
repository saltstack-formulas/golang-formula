title 'linux alternatives profile'

control 'golang linux alternatives' do
  impact 1.0
  title 'should be installed'
  desc "Ensure golang linux alternatives are correct"
  tag: package: "tarball archive"

  describe file('/usr/local/go') do         # golang-home alternative
    it { should be_symlink }
    it { should_not be_file }
    it { should_not be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('shallow_link_path') { should eq '/etc/alternatives/golang-home' }
  end

  describe file('/usr/bin/go') do         # go alternative
    it { should be_symlink }
    it { should_not be_file }
    it { should_not be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('shallow_link_path') { should eq '/etc/alternatives/link-go' }
  end

  describe file('/usr/bin/godoc') do         # godoc alternative
    it { should be_symlink }
    it { should_not be_file }
    it { should_not be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('shallow_link_path') { should eq '/etc/alternatives/link-godoc' }
  end

  describe file('/usr/bin/gofmt') do         # gofmt alternative
    it { should be_symlink }
    it { should_not be_file }
    it { should_not be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('shallow_link_path') { should eq '/etc/alternatives/link-gofmt' }
  end

end

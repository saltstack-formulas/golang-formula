title 'archives profile'

control 'golang tarball archive' do
  impact 1.0
  title 'should be installed'
  desc "Ensure golang tarball archive was extracted correctly"
  tag package: "tarball archive"

  describe file('/usr/local/go1.10.1.linux-amd64/go') do     # another test 
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end

  require 'digest'
  binary = file('/usr/local/go1.10.1.linux-amd64/go/bin/go').content
  sha256sum = Digest::SHA256.hexdigest(binary)
  describe file('/usr/local/go1.10.1.linux-amd64/go/bin/go') do
    its('sha256sum') { should eq '11438a2d41e257519e8c0ad098c287f9f73f1b8382a012a0c10e1dee5fb1e8ae' }
  end

  binary = file('/usr/local/go1.10.1.linux-amd64/go/bin/godoc').content
  sha256sum = Digest::SHA256.hexdigest(binary)
  describe file('/usr/local/go1.10.1.linux-amd64/go/bin/godoc') do
    its('sha256sum') { should eq '4076bb73349f253c04e5ef214934938760eefb26529f22d2e6fdbd61b99bb4b5' }
  end


  binary = file('/usr/local/go1.10.1.linux-amd64/go/bin/gofmt').content
  sha256sum = Digest::SHA256.hexdigest(binary)
  describe file('/usr/local/go1.10.1.linux-amd64/go/bin/gofmt') do
    its('sha256sum') { should eq '5673f5914f195331322b20aee026f1882dac7c92b61c41bae23a04fb803b3e2c' }
  end

end

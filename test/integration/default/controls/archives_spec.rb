# frozen_string_literal: true

control 'golang tar archive' do
  impact 1.0
  title 'should be installed'
  desc 'Ensure golang tarball archive was extracted correctly'

  describe file('/usr/local/go1.10.1.linux-amd64/go') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end

  require 'digest'
  binary = file('/usr/local/go1.10.1.linux-amd64/go/bin/go').content
  Digest::SHA256.hexdigest(binary)
  describe file('/usr/local/go1.10.1.linux-amd64/go/bin/go') do
    # rubocop:disable LineLength
    its('sha256sum') { should eq '11438a2d41e257519e8c0ad098c287f9f73f1b8382a012a0c10e1dee5fb1e8ae' }
    # rubocop:enable LineLength
  end

  binary = file('/usr/local/go1.10.1.linux-amd64/go/bin/godoc').content
  Digest::SHA256.hexdigest(binary)
  describe file('/usr/local/go1.10.1.linux-amd64/go/bin/godoc') do
    # rubocop:disable LineLength
    its('sha256sum') { should eq '4076bb73349f253c04e5ef214934938760eefb26529f22d2e6fdbd61b99bb4b5' }
    # rubocop:enable LineLength
  end

  binary = file('/usr/local/go1.10.1.linux-amd64/go/bin/gofmt').content
  Digest::SHA256.hexdigest(binary)
  describe file('/usr/local/go1.10.1.linux-amd64/go/bin/gofmt') do
    # rubocop:disable LineLength
    its('sha256sum') { should eq '5673f5914f195331322b20aee026f1882dac7c92b61c41bae23a04fb803b3e2c' }
    # rubocop:enable LineLength
  end
end

# frozen_string_literal: true

control 'golang tar archive' do
  impact 1.0
  title 'should be installed'
  desc 'Ensure golang tarball archive was extracted correctly'

  describe file('/usr/local/go1.14.2.linux-amd64/go') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end
end

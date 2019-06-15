control 'golang archive configuration' do
  title 'should match desired lines'

  describe file('/usr/local/go') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0777' }
  end
end

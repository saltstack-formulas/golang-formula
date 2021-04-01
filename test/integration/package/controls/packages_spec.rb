# frozen_string_literal: true

control 'golang package' do
  title 'should be installed'

  # Overide by platform
  pkg =
    case system.platform[:family]
    when 'suse', 'arch', 'bsd'
      'go'
    else
      'golang'
    end

  describe package(pkg) do
    it { should be_installed }
  end
end

# frozen_string_literal: true

control 'golang package' do
  title 'should be installed'

  # Overide by platform
  pkg =
    case platform[:family]
    # `linux` covers `arch` here
    when 'suse', 'linux'
      'go'
    else
      'golang'
    end

  describe package(pkg) do
    it { should be_installed }
  end
end

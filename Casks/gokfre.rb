cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "875244d9e894421abc9d5386993e3f366adcf4bc353bdfd1d5e61962f94c27f2"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "9276d919fce54365a728f85105a6c0717286aa658bcf26c846671fbee0d5383d"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
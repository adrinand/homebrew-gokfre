cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "ff47d1b8b2244cab5abb5bdad76ebb19f4be579197c6499994483febde09c6c3"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "c9549a4e0ba3c042400ecdcec9e7459cc55f46fcbdee9f6a7128a96834e90246"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
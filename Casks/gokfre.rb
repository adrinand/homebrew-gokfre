cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "52421dc6ed46c11ec65e6e4c6439eb9d4d8d26a264ac3e8283c94e71c8d4a2c2"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "2de33f39b31c1e88d2676c197f15f942d9c6929b05a30762a1d0c7eb0e894493"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
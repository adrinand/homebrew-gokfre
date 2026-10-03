cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "a3583400c9d9c104092b4ae09480552057b152aa729b20741d3794a1cd83168b"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "d196ee2aab52f265d33b2350c7ced78908f98622d449dfd01c0a2a3199dc1f9b"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
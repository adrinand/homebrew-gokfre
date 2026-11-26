cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "8f448df23d5911d07836cfee0051787b827483762cf266e5cadd866b070d62b0"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "3c6ab5446c4f6287c6c0f265af1931dccf93f5791f39403a8551e55011ec228a"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
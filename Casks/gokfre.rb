cask "gokfre" do
  on_arm do
    version "1.0.1"
    sha256 "0237debeba86bdb5ecd01c60a4ccbc757fddbb295ab2f9ec503110d0cacdfde4"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-rc-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "f0941ab29223fff25fc64f0efb7582f71c0f40df257cfab23e814de2ce421286"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
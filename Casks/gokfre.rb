cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "2baeb247b67d197d55f27bd8638e71270c0910f00aaa2d973bb5819a57139ba1"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "4c70bef26ec69e596766a3b89e899a72e6867cbf9d953477c3bf6e75a5358657"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
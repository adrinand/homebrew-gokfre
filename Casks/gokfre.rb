cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "45130e172705a8d65518387a26acf2b6062a348b395a503e5e4b153e8f99e751"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "3f653be03d8d34c971b7015a9bd66b8e60096723376b7d4d475d0209428c270a"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
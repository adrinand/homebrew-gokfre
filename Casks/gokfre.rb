cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "1409e8c8d87ceca0982d09b2839f0db9ed608a8839f1d89fa7f584b3c13061a4"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
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
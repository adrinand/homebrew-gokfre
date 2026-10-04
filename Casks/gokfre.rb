cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "b9b241fde6cd735f0c559eeeac1ee5d1c5c8599d37b814c3a3d209c9755f7373"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "7cc51daf8a18625fc6906e8e55f527e65edc4346fa6ab3c8f7eabbfbdfe53568"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
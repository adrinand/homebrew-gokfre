cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "aaead6fedc4a19917c1c987d4ae58d26d3957ca36145d5fb7465a3cc9924f958"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "82cb4ad9d4df91298dc566e62e7a99a15356c36131438d62b649168e5b0d779d"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
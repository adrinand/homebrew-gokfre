cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "c78c0c753188f338c32b4f2a73cb5023517fa9bdabe8323313b64547912c6adf"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "74398c0e4c4de66e799ffc3c3213ec60fae170fa875fe658d5f37ef22fd59aec"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
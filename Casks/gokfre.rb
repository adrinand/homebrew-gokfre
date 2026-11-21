cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "ef79185ad760cbe1021443200ae9492d3459cb7159cc0e4f5553636695e6b52a"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "0623497389ccdfe49e63b9de6a5b8a512db8da22f6636322dbfabc406ad37028"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
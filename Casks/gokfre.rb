cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "50c4912a8f03e9457592ac61ae779754458be16b9c9dc4de602622dc817851cd"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "06f10765af7ce2d2993149b38ea255b5374f5a99191568364522cffd73258640"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
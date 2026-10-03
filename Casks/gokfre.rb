cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "550702dd4fab37717631f5316771af0bfbaad16cf7dac26b6d77d8abf411d563"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "6d3f2ed4ddb4b8e9c5e302b797f6bc5d7ae9b4a291e1d0f0b4baf8b5c84bd656"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
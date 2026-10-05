cask "gokfre" do
  on_arm do
    version "1.0.0"
    sha256 "f590c99eb55555a18dd59771e4da1130e1dd608aa90dd25f27214c1c478101ae"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-arm64.dmg"
  end

  on_intel do
    version "1.0.0"
    sha256 "717020c2256fe3ebe075a42fcd7acb449cddf5e1c93585745c4bf515658b8cf6"

    url "https://github.com/adrinand/gokfre/releases/download/v#{version}/Gokfre-#{version}-x86_64.dmg"
  end

  name "Gokfre"
  desc "Short one-line description of Gokfre"
  homepage "https://github.com/adrinand/gokfre"

  app "Gokfre.app"

  zap trash: "~/Library/Application Support/Gokfre"
end
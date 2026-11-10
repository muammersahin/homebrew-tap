cask "all-in-term" do
  arch arm: "-arm64"

  version "1.0.2"
  sha256 arm:   "4bb5ee1c98869b8f382f021c7ed7bbef71a26d65535e257a3d22e84e19435df4",
         intel: "81c5413830a7b468d1da54f5833a33c23ed12fc599f106052198f00e90cf79c6"

  url "https://allinterm.com/All%20in%20Term-#{version}#{arch}.dmg"
  name "All in Term"
  desc "Terminal with SSH, SFTP and server tools"
  homepage "https://allinterm.com/"

  livecheck do
    url "https://allinterm.com/download.html"
    regex(/All%20in%20Term[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  depends_on :macos

  app "All in Term.app"

  zap trash: [
    "~/Library/Application Support/all-in-term",
    "~/Library/Preferences/com.allinterm.app.plist",
    "~/Library/Saved Application State/com.allinterm.app.savedState",
  ]
end

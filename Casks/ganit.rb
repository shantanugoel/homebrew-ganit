cask "ganit" do
  version "0.8.0"
  sha256 "65cfff4dbd5029d4c2a12ad05551c6bd31818324fb93628290d4b54e06ae629a"

  url "https://github.com/shantanugoel/ganit/releases/download/v#{version}/Ganit-#{version}.dmg"
  name "Ganit"
  desc "Notepad calculator"
  homepage "https://github.com/shantanugoel/ganit"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ganit.app"
  binary "#{appdir}/Ganit.app/Contents/Helpers/ganit"

  uninstall quit: "com.shantanugoel.Ganit"

  caveats <<~EOS
    After upgrading, reopen Ganit to run the new version.
    If Ganit is still running, quit it with Command-Q first.
  EOS

  zap trash: [
    "~/Library/Containers/com.shantanugoel.Ganit",
    "~/Library/Preferences/com.shantanugoel.Ganit.plist",
    "~/Library/Saved Application State/com.shantanugoel.Ganit.savedState",
  ]
end

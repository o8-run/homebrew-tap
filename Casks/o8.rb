cask "o8" do
  version "0.1.823"
  sha256 "d58c6a7d30f00f2b3e086c9bdabfef26ff029ac63cb13ec37010f3af39db8deb"

  url "https://github.com/o8-run/o8/releases/download/v#{version}/o8_#{version}_universal.dmg",
      verified: "github.com/o8-run/o8/"
  name "o8"
  desc "Review and merge layer for coding agents"
  homepage "https://o8.run/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "o8.app"

  zap trash: [
    "~/.o8",
    "~/Library/Application Support/ai.o8.desktop",
    "~/Library/Application Support/o8",
    "~/Library/Caches/ai.o8.desktop",
    "~/Library/Logs/ai.o8.desktop",
    "~/Library/Preferences/ai.o8.desktop.plist",
    "~/Library/WebKit/ai.o8.desktop",
  ]
end

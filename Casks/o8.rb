cask "o8" do
  version "0.1.825"
  sha256 "be2ca5a8b9e828d3fc967131a3555945f166422a62bee44f7a6fab99570e5d57"

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

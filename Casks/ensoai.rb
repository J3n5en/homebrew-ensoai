cask "ensoai" do
  version "0.2.40"
  sha256 arm: "980bafefd25f01d066d0f9034ef013d50d7a24e31f1f6ca7f8a85843ff8ad63f",
         intel: "6bbcf9a34a5f786e267341b45d42526b4e22e41aea8e05d50a06f771a7c8651a"

  on_arm do
    url "https://github.com/J3n5en/EnsoAI/releases/download/v#{version}/EnsoAI-#{version}-arm64.dmg"
  end
  on_intel do
    url "https://github.com/J3n5en/EnsoAI/releases/download/v#{version}/EnsoAI-#{version}.dmg"
  end

  name "EnsoAI"
  desc "Git Worktree Manager with AI Agent"
  homepage "https://github.com/J3n5en/EnsoAI"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "EnsoAI.app"

  zap trash: [
    "~/Library/Application Support/EnsoAI",
    "~/Library/Preferences/com.ensoai.app.plist",
    "~/Library/Caches/com.ensoai.app",
    "~/Library/Saved Application State/com.ensoai.app.savedState",
  ]
end

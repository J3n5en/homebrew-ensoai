cask "ensoai" do
  version "0.2.20"
  sha256 arm: "75b86329ac784a531435421c8be6b23e3f6731dac77a19973e062f139becab06",
         intel: "04cf01c86c3e7ebcc71e4c03e9c8f9c1d608b9f7289763dce29eb57af6f391d1"

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

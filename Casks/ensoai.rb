cask "ensoai" do
  version "0.2.18"
  sha256 arm: "a7868f426538363b5e7a4388280e1866a7172316f119d23d9c6809d7c9ed422c",
         intel: "b4c4f699da40d6f6e8e7a7de8ac0b5faf56ee569ca6e9371f93ef99d187ec76a"

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

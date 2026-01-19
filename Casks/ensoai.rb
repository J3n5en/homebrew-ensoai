cask "ensoai" do
  version "0.2.21"
  sha256 arm: "0918e3aaa3045208004c9a1b8f964096bb15925b516d68ee5b380576b8d0e147",
         intel: "cb1baa07f86018d093aa812f098c7338c55e08bcafd62b2c3069d19bc12b9730"

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

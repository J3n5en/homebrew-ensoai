cask "ensoai" do
  version "0.2.17"
  sha256 arm: "18d1cce560dd46625d12808d6121561ee866baa31916f53cb09b8afb53d3bf64",
         intel: "c2f51e084a543c4baa69d636805b1470c1903fb22b24776401a3e48c2d8871c2"

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

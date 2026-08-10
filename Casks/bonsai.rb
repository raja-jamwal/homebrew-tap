cask "bonsai" do
  version "0.1.0"
  sha256 "c19129a94fe750446f447c80bb1c94f213bfe78b6466d0d049ee828611a87dc8"

  url "https://github.com/raja-jamwal/bonsai/releases/download/v#{version}/Bonsai-#{version}-arm64.dmg"
  name "Bonsai"
  desc "Tree-structured, branching conversation client for the Claude CLI"
  homepage "https://github.com/raja-jamwal/bonsai"

  livecheck do
    url "https://github.com/raja-jamwal/bonsai/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Bonsai.app"

  zap trash: [
    "~/Library/Application Support/Bonsai",
    "~/Library/Logs/Bonsai",
    "~/Library/Preferences/com.bonsai.app.plist",
    "~/Library/Saved Application State/com.bonsai.app.savedState",
  ]

  caveats <<~EOS
    Bonsai is a front-end for the Claude CLI, which must be installed and on
    your PATH: https://docs.claude.com/en/docs/claude-code
  EOS
end

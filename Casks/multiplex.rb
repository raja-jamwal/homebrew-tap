cask "multiplex" do
  version "0.4.0"
  sha256 "81fbba6e2dcacd1e0eabfa5490282ab0ef4287a5efa04ebc1ff59df6c472b90e"

  url "https://github.com/raja-jamwal/homebrew-tap/releases/download/v#{version}/Multiplex-#{version}.dmg"
  name "Multiplex"
  desc "Multiplexer for terminals and Claude Code sessions"
  homepage "https://github.com/raja-jamwal/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Multiplex.app"

  zap trash: [
    "~/.multiplex",
    "~/Library/Preferences/in.datagrids.multiplexer.app.plist",
  ]
end

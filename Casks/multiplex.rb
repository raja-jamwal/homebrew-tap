cask "multiplex" do
  version "0.1.1"
  sha256 "287a595c48ba1d910e03947d363d4e43f9de7acfa943e134a3dd8df9a8579d84"

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

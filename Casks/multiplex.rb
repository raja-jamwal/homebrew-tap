cask "multiplex" do
  version "0.6.0"
  sha256 "eda9baa949c18da8796ba2055153f3c3aedc28cd7ec26f179d7d34dc86aeaaf0"

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

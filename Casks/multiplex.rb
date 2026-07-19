cask "multiplex" do
  version "0.2.0"
  sha256 "1645b8ed3d4d171bca2f5ce0a1f902da93a3740b5c488ab915cc891cb2cee0f4"

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

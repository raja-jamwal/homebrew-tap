cask "multiplex" do
  version "0.17.1"
  sha256 "037650c45724b251fcb5187e321944c8a88f3a6765b24ea69cedc314bc90bb9f"

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

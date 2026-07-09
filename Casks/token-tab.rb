cask "token-tab" do
  version "0.1.1"
  sha256 "0ff85f79c751c6858453cceada8574020f425c6e134aa09510b8e3fa6af4e083"

  url "https://github.com/YiftachCohen/token-tab/releases/download/v#{version}/Token-Tab-#{version}.zip"
  name "Token Tab"
  desc "Provably-safe Claude Code usage meter for the menu bar"
  homepage "https://github.com/YiftachCohen/token-tab"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Token Tab.app"

  zap trash: "~/Library/Containers/com.tokentab.TokenTab"
end

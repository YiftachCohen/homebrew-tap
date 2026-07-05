cask "token-tab" do
  version "0.1.0"
  sha256 "c6fcd22134e0fa5355aed8dd53493857b9ca7c001ce9413165149114d385e677"

  url "https://github.com/YiftachCohen/token-tab/releases/download/v#{version}/Token-Tab-#{version}.zip"
  name "Token Tab"
  desc "Provably-safe Claude Code usage meter for the menu bar"
  homepage "https://github.com/YiftachCohen/token-tab"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Token Tab.app"

  zap trash: "~/Library/Containers/com.tokentab.TokenTab"
end

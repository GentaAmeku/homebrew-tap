cask "headroom" do
  version "0.1.0"
  sha256 "a32ed7fe139a622d112852badcf6a54109db3fe6355ebeab47d2181a9605568d"

  url "https://github.com/GentaAmeku/headroom/releases/download/v#{version}/Headroom_#{version}_universal.dmg"
  name "Headroom"
  desc "Menu bar app showing AI coding tool (Claude, Cursor, Codex) usage at a glance"
  homepage "https://github.com/GentaAmeku/headroom"

  depends_on macos: ">= :big_sur"

  app "Headroom.app"

  zap trash: [
    "~/.config/headroom",
    "~/Library/Application Support/com.gameku.headroom",
    "~/Library/Caches/com.gameku.headroom",
  ]
end

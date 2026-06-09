cask "headroom" do
  version "0.1.1"
  sha256 "746f705c7ddeb58df8edb0571fd72601df9057afe5e2507b70f8284422461c7e"

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

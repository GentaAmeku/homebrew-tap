cask "headroom" do
  version "0.1.2"
  sha256 "4ba37de7a5f38445df8105c5c7c156914748e2cba0b6c68b7ae35a2ea57a1509"

  url "https://github.com/GentaAmeku/headroom/releases/download/v#{version}/Headroom_#{version}_universal.dmg"
  name "Headroom"
  desc "Menu bar app showing AI coding tool (Claude, Cursor, Codex) usage at a glance"
  homepage "https://github.com/GentaAmeku/headroom"

  depends_on macos: :big_sur

  app "Headroom.app"

  zap trash: [
    "~/.config/headroom",
    "~/Library/Application Support/com.gameku.headroom",
    "~/Library/Caches/com.gameku.headroom",
  ]

  caveats <<~EOS
    Headroom is unsigned. If macOS blocks it on first launch, remove the quarantine attribute:
      xattr -dr com.apple.quarantine /Applications/Headroom.app
  EOS
end

cask "headroom" do
  version "0.1.3"
  sha256 "532e869cb4e67126255f1b6e3c8b15b0ee06d0325e6cf7840f9880cbcbf82a0d"

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

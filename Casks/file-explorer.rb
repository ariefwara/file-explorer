cask "file-explorer" do
  version "0.1.0"
  sha256 "927bbbea20ad144be3259277d45edb01b3b14451b66bd77cdef46baf3a585823"

  url "https://github.com/ariefwara/file-explorer/releases/download/v#{version}/file-explorer_#{version}_aarch64.dmg"

  name "File Explorer"
  desc "Fast, modern file manager with tree panel sidebar"
  homepage "https://file-explorer.ariefw.com"

  app "File Explorer.app"
end

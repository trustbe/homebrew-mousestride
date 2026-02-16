cask "mousestride" do
  version "0.0.9"
  sha256 "25766dd360c12d78766711ad84628268df9370b5e9c870444c53e41b4e5f2fdf"

  url "https://github.com/trustbe/MouseStride/releases/download/v#{version}/MouseStrideDaemon-v#{version}.zip"
  name "MouseStride"
  desc "Lightweight mouse distance tracker for macOS"
  homepage "https://mousestride.trustbe.com/"

  depends_on macos: ">= :ventura"

  app "MouseStrideDaemon.app"

  zap trash: [
    "~/Library/Preferences/com.mousestride.daemon.plist",
  ]
end

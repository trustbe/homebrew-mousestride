cask "mousestride" do
  version "0.0.10"
  sha256 "5beba328162925766ff78ddfd6a4751f291a152beaf36e657e5034499610d5f9"

  url "https://github.com/trustbe/MouseStride/releases/download/v#{version}/MouseStrideDaemon-v#{version}.zip"
  name "MouseStride"
  desc "Lightweight mouse distance tracker for macOS"
  homepage "https://mousestride.trustbe.com/"

  depends_on macos: ">= :ventura"

  app "MouseStrideDaemon.app"

  postflight do
    system_command "/usr/bin/open", args: ["/Applications/MouseStrideDaemon.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.mousestride.daemon.plist",
  ]
end

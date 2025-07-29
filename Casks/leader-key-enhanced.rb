cask "leader-key-enhanced" do
  version "1.16.0-enhanced"
  sha256 "6bac0c9062c5a3e4a7d5ebff0bac2e080b65487500ccf06f5306d2b6ee13452c"

  url "https://drive.google.com/uc?export=download&id=1FKiv33CbHWUpUQEEvt_O1DybSvwuAlbm"
  name "Leader Key Enhanced"
  desc "Enhanced fork of Leader Key - The faster than your launcher launcher"
  homepage "https://github.com/arabshapt/LeaderKey.app"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Leader Key.app"

  zap trash: [
    "~/Library/Application Support/Leader Key",
    "~/Library/Caches/Leader Key",
    "~/Library/Preferences/Leader Key.plist",
    "~/Library/Saved Application State/Leader Key.savedState",
  ]
end
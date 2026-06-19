cask "cassette" do
  version "1.8.1"
  sha256 "4975c63adeb191e218417d6151e0086b99fa88ac0bd3dd935ba95b0b916772e3"

  url "https://github.com/MathieuDubart/cassette/releases/download/v#{version}/Cassette-#{version}.dmg",
    verified: "github.com/MathieuDubart/cassette/"
  name "Cassette"
  desc "Subsonic music client"
  homepage "https://getcassette.app/"

  depends_on macos: :sequoia

  app "Cassette.app"

  zap trash: [
    "~/Library/Application Support/fr.mathieu-dubart.Cassette",
    "~/Library/Caches/fr.mathieu-dubart.Cassette",
    "~/Library/Preferences/fr.mathieu-dubart.Cassette.plist",
  ]

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)\+\d+$/i)
    strategy :github_latest
  end
end

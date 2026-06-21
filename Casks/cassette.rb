cask "cassette" do
  version "1.8.3"
  sha256 "8dc50292a486e5aedb545052dfccc943525b724b7200f3a52a978a777e82e558"

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

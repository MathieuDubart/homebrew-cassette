cask "cassette" do
  version "1.7+15"
  sha256 "b901b76e42068aa87a22f6f43d10b8a722cbd789e48af035fcf6a3286ad2ea43"

  url "https://github.com/MathieuDubart/cassette/releases/download/v1.7%2B15/Cassette-1.7.0+15.dmg",
    verified: "github.com/MathieuDubart/cassette/"
  name "Cassette"
  desc "Subsonic music client"
  homepage "https://getcassette.app/"

  depends_on macos: ">= :sequoia"

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

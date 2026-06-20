cask "cassette" do
  version "1.8.2"
  sha256 "393c0ec3ddfe870d3e59bd23b1cf798d78d7cfa17648ee9f604a69836ccf4f31"

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

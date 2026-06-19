cask "cassette" do
  version "0.0.1-rc1"
  sha256 "3ab526487aaa5b83d7711d6e1c19773dd10002dc4506f0ecc75e64cca488b86b"

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

cask "gantry" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "85767a64c31dfc1bde107d088fd1d838c6adbd6cdfa1d67c744216322eba72f6",
         intel: "0b487e695dff83eba73a4edc60ac4d31b8ebb3308a5794fbbe54a655019e9499"

  url "https://github.com/trygantry/gantry/releases/download/v#{version}/Gantry_#{version}_#{arch}.dmg"
  name "Gantry"
  desc "Local-first mobile release governance desktop app"
  homepage "https://gantryapp.com/"

  depends_on macos: :sonoma

  app "Gantry.app"

  caveats <<~EOS
    Gantry #{version} is intentionally unsigned and not notarized.
    On first launch, Control-click Gantry in Applications, choose Open, then confirm Open.
    Automatic desktop updates are not included in unsigned releases.
  EOS
end

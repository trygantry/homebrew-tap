cask "gantry" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "8797a8477c858810facf82ee8f1880a5ec2f74eea2281d4a017f943f9f16fe00",
         intel: "39a6560c247143aa8a771845ec4fe92a0d8f1e372d062483540a6617b6a894f0"

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

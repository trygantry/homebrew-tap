cask "gantry" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "13eec2d389d4662d5b81695c0196f2b7b996c921b9c10b1be6906ffb6a5e566f",
         intel: "ed61cd8360c161e6f502932d48aad03255e7b21bcf5f6de09d9202193d877451"

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

# Homebrew tap for Gantry

This repository is a public distribution surface only. The Gantry product repository remains private; this tap contains no product source.

Install commands are supported only when the matching, qualified release assets and checksums are published in the public [Gantry distribution repository](https://github.com/trygantry/gantry-distribution):

```bash
brew install trygantry/tap/gantry
brew install --cask trygantry/tap/gantry
```

During the transition, the formula and cask may reference a release that is not yet published. Do not treat the commands as supported until the public release notes, assets, checksums, and anonymous install checks are complete.

The desktop cask currently describes intentionally unsigned and non-notarized builds. Automatic desktop updates are not included in those releases; Homebrew's normal quarantine behavior remains in effect.

The tap is not a source mirror. The private product repository, public release assets, notices, checksums, release notes, and security policy are maintained through their respective approved boundaries.

# Review Journal

The repository goal stays the same: develop a Swift command-oriented project for query scenarios with safe and unsafe fixtures, remediation hints, and offline replay mode. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its databases focus without claiming live deployment or external usage.

## Cases

- `baseline`: `index fit`, score 87, lane `hold`
- `stress`: `join width`, score 173, lane `ship`
- `edge`: `constraint risk`, score 157, lane `ship`
- `recovery`: `plan drift`, score 165, lane `ship`
- `stale`: `index fit`, score 133, lane `watch`

## Note

This file is intentionally plain so the fixture remains the source of truth.

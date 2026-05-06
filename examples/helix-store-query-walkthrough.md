# Helix Store Query Line Walkthrough

I use this file as a small checklist before changing the Swift implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | index fit | 87 | hold |
| stress | join width | 173 | ship |
| edge | constraint risk | 157 | ship |
| recovery | plan drift | 165 | ship |
| stale | index fit | 133 | watch |

Start with `stress` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stress` is the optimistic case; use it to make sure the scoring path still rewards strong signal.

# helix-store-query-line

`helix-store-query-line` is a Swift project for Databases. It turns develop a Swift command-oriented project for query scenarios with safe and unsafe fixtures, remediation hints, and offline replay mode into a small local model with readable fixtures and a direct verification command.

## Reading Helix Store Query Line

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

The goal is to capture the core behavior in code and make the surrounding assumptions obvious. A reader should be able to run the verifier, open the fixtures, and understand why each decision was made.

## Fixture Notes

`degraded` is the first example I would inspect because it lands on the `review` path with a score of -84. The broader file also keeps `degraded` at -84 and `recovery` at 173, which gives the model a useful low-to-high spread.

## Design Sketch

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Swift project compiles a minimal command-line test harness against the local Windows SDK.

## What It Does

- Models schema shape with deterministic scoring and explicit review decisions.
- Uses fixture data to keep query checks changes visible in code review.
- Includes extended examples for fixture rows, including `recovery` and `degraded`.
- Documents constraint behavior tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Files Worth Reading

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Next Directions

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more databases fixture that focuses on a malformed or borderline input.

## Limits

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.

## Setup

Use a normal shell with Swift available on `PATH`. The verifier is written as a PowerShell script because the portfolio was assembled on Windows.

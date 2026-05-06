# beacon-algo-flow-mark

`beacon-algo-flow-mark` is a OCaml project in algorithms. Its focus is to package an OCaml local lab for flow analysis with seeded input scenarios, deterministic summary checks, and documented operating limits.

## Why It Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Beacon Algo Flow Mark Review Notes

The first comparison I would make is `boundary pressure` against `search depth` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/beacon-algo-flow-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `boundary pressure` and `search depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The OCaml addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.

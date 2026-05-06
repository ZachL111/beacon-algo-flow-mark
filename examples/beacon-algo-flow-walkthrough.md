# Beacon Algo Flow Mark Walkthrough

I use this file as a small checklist before changing the OCaml implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 177 | ship |
| stress | search depth | 173 | ship |
| edge | boundary pressure | 194 | ship |
| recovery | complexity | 180 | ship |
| stale | input width | 185 | ship |

Start with `edge` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stress` becomes less cautious without a clear reason, I would inspect the drag input first.

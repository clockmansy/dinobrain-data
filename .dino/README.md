# .dino

DinoBrain app metadata.

Syncable after review:

- `index`
- `evaluations`
- `tasks`
- `events`
- `traces`
- `context-packs`
- `quarantine`

Local-only:

- `secrets.json`
- `local.json`
- `cache`
- `tmp`

Task, event, and trace records may contain user request summaries. They are conditional sync data and must pass sensitivity review.
Context Pack traces may contain selected note summaries and user questions. They are conditional sync data and must pass sensitivity review.
Quarantine records are conditional sync data and are used by the app to exclude unsafe or stale records from default Context Packs.

# .dino/quarantine

Active quarantine records.

The DinoBrain MCP `quarantine_record` tool writes JSON records here.

Each quarantine record identifies a `target_path` that default Context Packs must exclude.

Use quarantine when a note is:

- wrong
- stale
- unsafe
- over-promoted
- missing required evidence

Quarantine records are conditional sync data because they may mention sensitive paths or review reasons.


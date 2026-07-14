# 15_Profile

This lane holds reviewed facts about the local user that improve identity, preference, constraint, and continuity queries.

The directory is part of the reusable source layer, not a runtime projection. In `local_only` mode it may evolve in local Git history, but remote push remains blocked.

## Record policy

- Prefer explicit first-person statements from the user.
- Store the minimum durable claim needed for retrieval.
- Distinguish direct statements from inferred traits.
- Include `source_status`, `confidence`, and `last_verified` metadata.
- Send ambiguous or sensitive claims to `80_Review_Queue`.
- Never store passwords, tokens, financial credentials, government identifiers, or raw full conversations.
- Never auto-accept extracted candidates.

Suggested record groups:

- `Identity.md`: name and stable self-description explicitly provided by the user.
- `Preferences.md`: working and communication preferences.
- `Constraints.md`: durable boundaries and non-negotiable requirements.
- `Goals.md`: long-running goals whose continued retrieval is useful.

Example metadata:

```yaml
title: User preference
summary: One minimal durable preference.
source_status: explicit_user_statement
confidence: high
last_verified: YYYY-MM-DD
tags:
  - profile
  - preference
```

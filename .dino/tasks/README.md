# .dino/tasks

Task records created by the DinoBrain MCP `start_task` and `finish_task` tools.

These records are conditional sync data.

Each task record should include:

- `task_id`
- `status`
- `request`
- `project`
- `mode`
- `sensitivity`
- timestamps
- related trace path when finished

If a task request contains sensitive material, do not sync it.


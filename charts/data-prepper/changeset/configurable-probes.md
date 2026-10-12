type: Added
current_version: 0.3.1
---
Added configurable `livenessProbe` and `readinessProbe` timing settings, and an optional `startupProbe`, so slow-starting pods are not killed by the liveness probe during JVM startup. Defaults are unchanged.

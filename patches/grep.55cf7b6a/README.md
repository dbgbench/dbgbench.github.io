* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 1 | Do not skip if file is not set (and thus desc is set to STDIN_FILENO) | Different but Correct |  |
| YmI4MGM3ND | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| MjYyZjkxNm | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| ZGU4Yjc1ZG | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| ZWM2ODBmOG | 1 | 1 | Do not skip if file is not set (and thus desc is set to STDIN_FILENO) | Different but Correct |  |
| OWMzNDk3N2 | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| NTM3Y2E1MW | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| MDliMzQ4OT | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| ZmU3ZTExOW | 0 | 0 | Negate the skip condition | Regression | Skip everything that should not be skipped (while not skipping STDIN) |
| MGFkYmExOT | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |
| MDUyYzIwMz | 1 | 1 | Do not skip if desc is set to STDIN_FILENO | Developer Fix |  |

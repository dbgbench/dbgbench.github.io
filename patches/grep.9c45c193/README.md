* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 0 | 0 | Redefine excluded flag in lib/exclude.c | Unrelated Workaround | The bug is definitely not in the third-party library. |
| YmI4MGM3ND | 1 | 0 | Independent of whether file matches included_pattern, never exclude (skip) | Incomplete Fix | Doesn't skip files that are *not* in the included patterns. |
| MjYyZjkxNm | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| ZGU4Yjc1ZG | 1 | 1 | Do not set EXCLUDE_INCLUDE flag for included_patterns. | Different but Correct | Effectively negates the faulty condition |
| ZWM2ODBmOG | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| OWMzNDk3N2 | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| ZjZhNTVkNj | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| NTM3Y2E1MW | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| MDliMzQ4OT | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| ZmU3ZTExOW | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| MGFkYmExOT | 1 | 1 | Remove negation such that included_patterns are not excluded during classification. | Developer Fix |  |
| MDUyYzIwMz | 1 | 1 | Do not set EXCLUDE_INCLUDE flag for included_patterns. | Different but Correct | Effectively negates the faulty condition |

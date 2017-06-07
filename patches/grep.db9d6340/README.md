* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 0 | Do not reset beg to mb_start, at all | Regression | treating the symptom but also affecting other inputs |
| MjYyZjkxNm | 1 | 0 | Do not reset beg to mb_start, at all | Regression | treating the symptom but also affecting other inputs |
| YmI4MGM3ND | 1 | 1 | Skip the whole character if we got match in the middle. | Different but Correct | is_mb_middle works correctly |
| ZGU4Yjc1ZG | 1 | 1 | Go to after the current match. | Different but Correct |  |
| ZWM2ODBmOG | 1 | 0 | Do not reset beg to mb_start, at all | Regression | treating the symptom but also affecting other inputs |
| OWMzNDk3N2 | 1 | 0 | Delete continue | Treating the Symptom |  |
| NTM3Y2E1MW | 1 | 1 | Raise an error, if is_mb_middle is unsuccessful in finding the beginning of the multi-byte and adjusting mb_start | Developer Fix |  |
| MDliMzQ4OT | 1 | 1 | Go to after the current match. | Different but Correct |  |
| ZmU3ZTExOW | 1 | 0 | Jump to failure if mb_len <= 2 | Regression | Always fail to match multibyte characters |
| MDUyYzIwMz | 1 | 0 | Do not reset beg to mb_start, at all | Regression | treating the symptom but also affecting other inputs |
| MGFkYmExOT | 1 | 1 | Skip the whole character if we got match in the middle. | Different but Correct | is_mb_middle works correctly |

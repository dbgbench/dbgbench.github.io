* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 1 | only call is_mb_middle if len is set | Different but Correct |  |
| YmI4MGM3ND | 1 | 1 | only call is_mb_middle if len is set | Different but Correct |  |
| MjYyZjkxNm | 1 | 0 | If match is at the beginning of the string (offset=0), return the complete buffer (set len=size and goto success) | Regression | breaks normal matches at the beginning. Should not return complete buffer |
| ZGU4Yjc1ZG | 1 | 1 | only call is_mb_middle if len is set | Different but Correct |  |
| ZWM2ODBmOG | 1 | 1 | is_mb_middle returns false for len=0 | Developer Fix |  |
| OWMzNDk3N2 | 1 | 0 | don't reset beg | Treating the symptom | breaks multibyte character handling |
| ZjZhNTVkNj | 1 | 0 | Remove continue | Treating the symptom | breaks multibyte character handling |
| NTM3Y2E1MW | 1 | 0 | Remove part of the check which caused is_mb_middle to return true | Treating the symptom | breaks multibyte character handling |
| MDliMzQ4OT | 1 | 1 | Jump to success if mb_len==1 | Different but Correct | workaround that works only in this degenerate case |
| ZmU3ZTExOW | 1 | 0 | Jump to failure if mb_len <= 2 | Regression | Always fail to match multibyte characters |
| MDUyYzIwMz | 1 | 0 | don't reset beg | Treating the symptom | breaks multibyte character handling |
| MGFkYmExOT | 1 | 1 | is_mb_middle returns false for len=0 | Developer Fix |  |

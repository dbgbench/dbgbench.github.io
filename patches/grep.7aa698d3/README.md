* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 0 | Print the complete line when printing match | Regression | Only match should be printed |
| MjYyZjkxNm | 1 | 0 | Print the complete line when printing match | Regression | Only match should be printed |
| YmI4MGM3ND | 1 | 0 | If matched string contains a wide character, double the length of the printed match | Regression | Works only for the test case. Not always exactly half. |
| ZGU4Yjc1ZG | 1 | 1 | Add a mapping between normal-case and lower-case string to compute the length of the match in the normal-case string from the length of the match in the lower-case string. | Developer Fix |  |
| ZWM2ODBmOG | 1 | 0 | Print the complete line when printing match | Regression | Only match should be printed |
| NTM3Y2E1MW | 1 | 0 | Do not lower the case. | Regression | Case-sensitve search when it should be case-insensitive |
| ZmU3ZTExOW | 1 | 0 | Jump to failure if mb_len <= 2 | Regression | Always fail to match multibyte characters |
| MjYyYzZkN2 | 1 | 0 | Use check_multibyte_string to compute the size of each character in normal-case and increase len for every multibyte character. | Incomplete Fix | Not all lower-cases of multibyte characters occupy one byte less. |

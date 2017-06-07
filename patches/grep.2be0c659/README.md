* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 0 | Return complete line if match exists. | Regression | Only match should be returned |
| MjYyZjkxNm | 1 | 0 | Return complete line if match exists. | Regression | Only match should be returned |
| YmI4MGM3ND | 1 | 0 | Return complete line if match exists. | Regression | Only match should be returned |
| ZGU4Yjc1ZG | 1 | 1 | To correct the match_size, lower-case as many characters in the normal-case match as result in match_size lower-case characters. | Different but Correct |  |
| ZWM2ODBmOG | 1 | 0 | Return complete line if match exists. | Regression | Only match should be returned |
| OWMzNDk3N2 | 1 | 0 | Jump to failure if mb_len <= 2 | Regression | Always fail to match multibyte characters |
| ZmU3ZTExOW | 1 | 0 | Jump to failure if mb_len <= 2 | Regression | Always fail to match multibyte characters |
| MDUyYzIwMz | 1 | 0 | Add the difference in length of lower-case and normal-case string to the match size | Incomplete Fix | For files that has more multibyte characters than given in the match, grep reports longer matches than needed. |

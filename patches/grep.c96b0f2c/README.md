* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 0 | 0 | Skip printing if match is empty and we are not in inversion mode (-v) -- but still increment number of matched lines | Incomplete Fix | Test case still failing |
| YmI4MGM3ND | 1 | 0 | Skip printing if match is empty (even if we are in inversion mode). | Regression | It should not skip printing if in inversion-mode (-v) |
| ZGU4Yjc1ZG | 1 | 1 | Skip printing if match is empty and we are not in inversion mode (-v) | Different but Correct |  |
| ZWM2ODBmOG | 1 | 1 | Skip printing if match is empty and we are not in inversion mode (-v) | Different but Correct |  |
| OWMzNDk3N2 | 1 | 1 | Handle case where no match was found by breaking loop if next_beg == buflim | Developer Fix |  |
| NTM3Y2E1MW | 1 | 1 | Handle case where no match was found by breaking loop if next_beg == buflim | Developer Fix |  |
| MjYyYzZkN2 | 1 | 0 | I've made sure search string length is calculated correctly for multibyte multiline strings. | Regression | string length is already calculated correctly |
| ZmU3ZTExOW | 1 | 0 | QUIT if mb_len <= 2 | Regression | Quit if there exist multibyte characters |

* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 0 | Move setbit_case_fold function such that it is only called for single-byte characters | Regression | setbit_case_fold is supposed to be called in the multibyte case. |
| YmI4MGM3ND | 1 | 0 | Check for overflow (the overflow value happens to match EOF). | Treating the Symptom | This does not address the root cause but the symptom |
| MjYyZjkxNm | 1 | 0 | Use an arbitrary value instead of c | Treating the Symptom | No segmentation fault but incorrect behavior |
| ZGU4Yjc1ZG | 1 | 0 | Check for overflow (the overflow value happens to match EOF). | Treating the Symptom | This does not address the root cause but the symptom |
| ZWM2ODBmOG | 1 | 1 | Use wc instead of c (which equals c if the character is not multibyte). | Developer Fix |  |
| OWMzNDk3N2 | 1 | 0 | Reimplement the conversion from multibyte to single byte character to not return EOF or a negative index. | Incomplete Fix | Test case still fails |
| NTM3Y2E1MW | 1 | 1 | Use wc instead of c (which equals c if the character is not multibyte). | Developer Fix |  |
| MjYyYzZkN2 | 1 | 0 | Check for overflow (the overflow value happens to match EOF). | Treating the Symptom | This does not address the root cause but the symptom |
| MGFkYmExOT | 1 | 0 | Check for overflow (the overflow value happens to match EOF). | Treating the Symptom | This does not address the root cause but the symptom |
| MDUyYzIwMz | 1 | 0 | Check for overflow (the overflow value happens to match EOF). | Treating the Symptom | This does not address the root cause but the symptom |

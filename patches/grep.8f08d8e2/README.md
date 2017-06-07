* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 1 | update len with end - beg | Different but Correct |  |
| YmI4MGM3ND | 1 | 1 | goto success (which updates len with end - beg) | Developer Fix |  |
| MjYyZjkxNm | 1 | 0 | update len with end - beg for all pattern matches (including regex patterns) | Regression | Also affects regex patterns (see search.c:463) |
| ZGU4Yjc1ZG | 1 | 1 | update len with end - beg | Different but Correct |  |
| ZWM2ODBmOG | 1 | 1 | goto success (which updates len with end - beg) | Developer Fix |  |
| ZmU3ZTExOW | 1 | 0 | Always return complete line | Regression |  |
| MDUyYzIwMz | 1 | 1 | goto success (which updates len with end - beg) | Developer Fix |  |
| MGFkYmExOT | 1 | 1 | goto success (which updates len with end - beg) | Developer Fix |  |

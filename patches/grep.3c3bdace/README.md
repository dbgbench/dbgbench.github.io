* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| OWUwOTY1N2 | 1 | 1 | Allocate twice or 3x as much for merged.elems | First Developer Fix |  |
| MjYyZjkxNm | 1 | 0 | Always reset the number of elements (nelem) to 0. | Regression | Always overrides the first element instead during insert. |
| ZGU4Yjc1ZG | 1 | 1 | Reallocate as needed | Different but Correct |  |
| ZWM2ODBmOG | 1 | 1 | Allocate twice or 3x as much for merged.elems | First Developer Fix |  |
| OWMzNDk3N2 | 1 | 1 | Allocate twice or 3x as much for merged.elems | First Developer Fix |  |
| NTM3Y2E1MW | 1 | 1 | Allocate twice or 3x as much for merged.elems | First Developer Fix |  |
| MjYyYzZkN2 | 1 | 1 | Allocate twice or 3x as much for merged.elems | First Developer Fix |  |
| ZmU3ZTExOW | 1 | 0 | Unrelated: corrected index value and preventing function calling at unnecessary places. | Regression | Does not fix the problem of insufficient memory |
| MDUyYzIwMz | 1 | 0 | Rollback to previous commit | Regression | Rollback makes good intentions of commit obsolete |
| MGFkYmExOT | 1 | 1 | Allocate twice or 3x as much for merged.elems | First Developer Fix |  |

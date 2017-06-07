* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| YTA2MTE4ND | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| ZTk0ZThkOD | 1 | 0 | Check for nullpointer only before or in fatal_file_error | Incomplete Fix | Null pointer might still propagate via parser.c:1342 or 1347 |
| OTcyZjg1Mz | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| ZmZkMWM5OG | 1 | 0 | Check for nullpointer only before or in fatal_file_error | Incomplete Fix | Null pointer might still propagate via parser.c:1342 or 1347 |
| MGJmMTU1N2 | 1 | 0 | Check for nullpointer only before or in fatal_file_error | Incomplete Fix | Null pointer might still propagate via parser.c:1342 or 1347 |
| ZTRmYWE5Nj | 1 | 0 | Do not increment counter, at all | Regression | Fix impacts other inputs where some arguments might not be parsed at all. |
| NDM5MjVmOT | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| NGU0NDRiM2 | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| NzBjMjQ0OT | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| MzBiYjQ4ZG | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| ZTBjYWY1Nj | 1 | 0 | Check for nullpointer only before or in fatal_file_error | Incomplete Fix | Null pointer might still propagate via parser.c:1342 or 1347 |
| MTk0NjE0Mj | 1 | 1 | Check for nullpointer directly after increment of arg_ptr | Developer Fix |  |
| ODY3ODM5YW | 1 | 0 | Check for nullpointer only before or in fatal_file_error | Incomplete Fix | Null pointer might still propagate via parser.c:1342 or 1347 |

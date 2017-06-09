* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZDc4NDZjMm | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| YTA2MTE4ND | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| ZTk0ZThkOD | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| OTcyZjg1Mz | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| ZmZkMWM5OG | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| ZTRmYWE5Nj | 1 | 0 | Do not increment arg_ptr at all | Regression | Fix impacts other inputs where cmd args may not be parsed at all |
| MGJmMTU1N2 | 1 | 0 | Add null-pointer check | Regression | estimate_pattern_match is not called when it should be called. |
| NDM5MjVmOT | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| NGU0NDRiM2 | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| NzBjMjQ0OT | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| NTU0ZTZlNT | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| MzBiYjQ4ZG | 1 | 1 | Use a copy of original argv[*arg_ptr] (temp) when argv[*arg_ptr] is read | Different but correct | When increment happens does not matter since we are working on a copy of the original argument. |
| ZTBjYWY1Nj | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| MTk0NjE0Mj | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |
| ODY3ODM5YW | 1 | 1 | Increment arg_ptr *after* argv[*arg_ptr] is read | Developer Fix |  |

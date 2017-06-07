* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZDc4NDZjMm | 1 | 0 | remove FTS_LOGICAL flag | Incorrect workaround | FTS_LOGICAL is supposed to be set |
| YTA2MTE4ND | 0 | 0 | manually change directory in launch() | Regression | Regression Test Fails |
| ZTRmYWE5Nj | 1 | 0 | remove FTS_LOGICAL flag | Incorrect workaround | FTS_LOGICAL is supposed to be set |
| NDM5MjVmOT | 1 | 1 | Compute pathname and prefix correctly in new_impl_pred_exec | Developer Fix |  |
| MzBiYjQ4ZG | 1 | 0 | Do not follow directory symlinks | Incomplete Fix |  |

* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| YTA2MTE4ND | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| OTcyZjg1Mz | 1 | 1 | Correct buggy if-condition by substituting excep->wd_for_exec by execp->todo | Developer Fix |  |
| ZmZkMWM5OG | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| MGJmMTU1N2 | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| NDM5MjVmOT | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| NGU0NDRiM2 | 1 | 1 | Correct buggy if-condition by substituting excep->wd_for_exec by execp->todo | Developer Fix |  |
| OTRmYzA5OD | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| MzBiYjQ4ZG | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| ZTBjYWY1Nj | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| MTk0NjE0Mj | 1 | 0 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo | Regression | Fix impacts inputs where execp->todo is not false s.t. the assertion fails. If execp->todo could never be false, the developer fix would substitute a superflous condition. |
| ODY3ODM5YW | 1 | 1 | If is_exec_in_local_dir, then always reallocate execp->wd_for_exec and assert execp->todo. Also remove the assertion | Different but Correct |  |

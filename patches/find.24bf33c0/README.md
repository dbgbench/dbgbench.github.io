* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZTk0ZThkOD | 0 | 0 | Set eval_tree->need_stat to true such that stat() is called and state.type is set | Incomplete Fix | Test case still fails |
| YTA2MTE4ND | 1 | 0 | Handle FTS_NS as error (independent of whether it is a symlink loop) | Regression | Fix also impacts inputs where FTS_NS is not an error flag |
| OTcyZjg1Mz | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer Fix |  |
| ZmZkMWM5OG | 1 | 0 | Handle FTS_NS as error IF symlink loop, and handle many other flags as error | Regression | Fix also impacts unrelated flags |
| MGJmMTU1N2 | 1 | 0 | Handle Top Dir case | Regression | Unrelated |
| ZTRmYWE5Nj | 0 | 0 | Set ent->fts_info to FTS_SLNONE such that it is handled as error | Incomplete Fix | Test case still fails |
| NDM5MjVmOT | 1 | 0 | Handle FTS_NS as error (independent of whether it is a symlink loop) | Regression | Fix also impacts inputs where FTS_NS is not an error flag |
| NTU0ZTZlNT | 1 | 0 | Handle FTS_NS as error IF symlink loop, and remove handling for negative file descriptors | Regression | There is no problem with negative file descriptors |
| NGU0NDRiM2 | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer-Fix |  |
| NzBjMjQ0OT | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer-Fix |  |
| MzBiYjQ4ZG | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer-Fix |  |
| ZTBjYWY1Nj | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer-Fix |  |
| MTk0NjE0Mj | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer-Fix |  |
| ODY3ODM5YW | 1 | 1 | Handle FTS_NS as error IF symlink loop | Developer-Fix |  |

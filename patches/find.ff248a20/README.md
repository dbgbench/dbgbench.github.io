* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZTk0ZThkOD | 1 | 1 | Only overwrite if statbuf is initialized | Different but Correct |  |
| YTA2MTE4ND | 1 | 0 | Never overwrite | Regression | Fix impacts inputs where statbuf is correctly overridden |
| OTcyZjg1Mz | 1 | 0 | Never overwrite | Regression | Fix impacts inputs where statbuf is correctly overridden |
| ZmZkMWM5OG | 1 | 0 | Never overwrite | Regression | Fix impacts inputs where statbuf is correctly overridden |
| NDM5MjVmOT | 1 | 0 | Point stat_buf to statp. | Regression | When writing to stat_buf, we override content of statp which is later used in apply_predicate! |
| NGU0NDRiM2 | 1 | 0 | increase pointer to current directory before calling process_dir | Incorrect workaround | curr_dir is not supposed to be increased |
| NzBjMjQ0OT | 1 | 1 | Always stat() before overriding dir_ids[dir_curr] at find/find.c:1621 | Different but Correct |  |
| ZTBjYWY1Nj | 1 | 0 | Go to a maximum depth of at most 1 | Regression | Fix impacts all searches with more depth required |
| MTk0NjE0Mj | 1 | 1 | Only overwrite if statbuf is initialized | Different but Correct |  |
| ODY3ODM5YW | 1 | 1 | Only overwrite if statbuf is initialized | Different but Correct |  |

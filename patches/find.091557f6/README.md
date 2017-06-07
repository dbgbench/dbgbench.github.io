* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZTk0ZThkOD | 0 | 0 | set "need_stat" flag in predicate structure to true if "following symlink" option set | Incomplete Fix | Test case still fails |
| YTA2MTE4ND | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |
| OTcyZjg1Mz | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |
| ZmZkMWM5OG | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |
| MGJmMTU1N2 | 1 | 0 | Make that stat() is called and state.type is set | Incorrect workaround | stat() is not supposed to be called |
| ZTRmYWE5Nj | 1 | 0 | Remove violated assertion | Treating Symptom |  |
| NDM5MjVmOT | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |
| NGU0NDRiM2 | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |
| NzBjMjQ0OT | 1 | 0 | Remove violated assertion | Treating Symptom |  |
| ZTBjYWY1Nj | 1 | 0 | Remove violated assertion | Treating Symptom |  |
| MzBiYjQ4ZG | 1 | 0 | Remove violated assertion | Treating Symptom |  |
| MTk0NjE0Mj | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |
| ODY3ODM5YW | 1 | 1 | Handle FTS_NS as error | Different but Correct Fix | a) we did not specify that no error should be shown, b) in another version this is handled as error. |

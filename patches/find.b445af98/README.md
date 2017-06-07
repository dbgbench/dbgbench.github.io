* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZTk0ZThkOD | 1 | 0 | Make that stat() is called and state.type is set | Incorrect workaround | stat() is not supposed to be called |
| YTA2MTE4ND | 1 | 1 | Move state.curdepth assignment to shortly before digest_mode is called | Developer Fix |  |
| OTcyZjg1Mz | 1 | 0 | Make that stat() is called and state.type is set | Incorrect workaround | stat() is not supposed to be called |
| ZmZkMWM5OG | 1 | 1 | Move state.curdepth assignment to shortly before digest_mode is called | Developer Fix |  |
| NDM5MjVmOT | 1 | 0 | Change check to match incorrect value of state.curdepth | Treating Symptom |  |
| MTk0NjE0Mj | 1 | 1 | Move state.curdepth assignment to shortly before digest_mode is called | Developer Fix |  |

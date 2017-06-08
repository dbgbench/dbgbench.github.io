* P: patch is Plausible (passes our test case)
* C: patch is Correct (passes our code review)

| Participant ID | P | C | Strategy | Category | Rationale |
| -- | -- | -- | -- | -- | -- |
| ZTk0ZThkOD | 1 | 1 | Pass a copy of timearg into get_relative_timestamp (which calls get_comp_type the second time) | Different but Correct |  |
| YTA2MTE4ND | 1 | 1 | Save timearg in auxiliary variable and restore after first call to get_comp_type. | Developer-Fix |  |
| OTcyZjg1Mz | 1 | 1 | Pass a copy of timearg into the first call of get_comp_type. | Different but Correct |  |
| ZmZkMWM5OG | 1 | 1 | Pass a copy of timearg into the first call of get_comp_type. | Different but Correct |  |
| MGJmMTU1N2 | 1 | 1 | Decrement timearg after the first call if it is not COMP_EQ | Different but Correct |  |
| NDM5MjVmOT | 1 | 1 | Decrement timearg after the first call if it is not COMP_EQ | Different but Correct |  |
| NGU0NDRiM2 | 1 | 1 | Save timearg in auxiliary variable and restore after first call to get_comp_type. | Developer-Fix |  |
| NzBjMjQ0OT | 1 | 1 | Save timearg in auxiliary variable and restore after first call to get_comp_type. | Developer-Fix |  |
| ZTBjYWY1Nj | 1 | 1 | Pass a copy of timearg into get_relative_timestamp (which calls get_comp_type the second time) | Different but Correct |  |
| MTk0NjE0Mj | 1 | 1 | Pass a copy of timearg into the first call of get_comp_type. | Different but Correct |  |
| MzBiYjQ4ZG | 1 | 1 | Restore timearg only if classified as COMP_LT | Developer Fix | get_comp_type always returns true |
| ODY3ODM5YW | 1 | 1 | Pass a copy of timearg into the first call of get_comp_type. | Different but Correct |  |

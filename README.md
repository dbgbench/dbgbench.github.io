## Summary
How do professional software engineers debug computer programs? In an experiment with 27 real bugs that existed in several widely used programs, we invited 12 professional software engineers, who together spent one month on localizing, explaining, and fixing these bugs. This did not only allow us to study the various tools and strategies used to debug the same set of errors. We could also determine exactly which statements a developer would localize as faults, how a developer would diagnose and explain an error, and how a developer would fix an error – all of which software engineering researchers seek to automate. Until now, it has been difficult to evaluate the effectiveness and utility of automated debugging techniques without a user study. We publish the collected data, called DBGBENCH, to facilitate the effective evaluation of automated fault localization, diagnosis, and repair techniques w.r.t. the judgement of human experts.

<p style="position:fixed; left: 50%; top: 255px; transform: translate(-635px, 0%); width: 300px; padding: 0px">
<a href="#use">Use DBGBench</a><br/>
<a href="#cite">Cite DBGBench</a><br/>
<a href="https://github.com/dbgbench/dbgbench.github.io/raw/master/abstract.pdf"><img src="https://github.com/dbgbench/dbgbench.github.io/raw/master/abstract.png" alt="DBGBench Abstract" style="width: 300px;"/></a></p>

<p align="center"><img src="https://github.com/dbgbench/dbgbench.github.io/raw/master/mainobjective.png" alt="Main Objectives" width="90%" /></p>

| <br/>**ID** | **Regression** | **Bug<br/>Report** | **Fault<br/>Locations<br/>** | **Bug<br/>Diagnosis** | <br/>**Patch** |
| -- | -- | -- | -- | -- | -- |
| [find.24e2271e](https://github.com/dbgbench/dbgbench.github.io/raw/master/benchmark.pdf)<br/>Error Type: Functional Bug<br/>Avg. Time: 13.8 min<br/>Explanation: Slightly difficult<br/>Patching: Slightly difficult<br/>Correctness: 75%| <br/>[Commit](http://git.savannah.gnu.org/cgit/findutils.git/commit/?id=f0759ab8db9cab16699fba45fa6117ef06620194) | Simple<br/>Original | <br/>Locations | <br/>Diagnosis | Pract.<br/>Devel. |


## <a name="use"></a>How to Use?

## <a name="cite"></a>How to Cite?
```
@inproceedings{dbgbench, 
  author = {B\"{o}hme, Marcel and Soremekun, Ezekiel Olamide and Chattophadyay, Sudipta and Ugherughe, Emamurho and Zeller, Andreas}, 
  title = {Where is the Bug and How is it Fixed? An Experiment with Practitioners}, 
  booktitle = {Proceedings of the Joint meeting of the European Software Engineering Conference and the ACM SIGSOFT Symposium on the Foundations of Software Engineering (ESEC/FSE) 2017}, 
  series = {FSE 2017}, 
  pages = {1-11}, 
  year = {2017}
}
```



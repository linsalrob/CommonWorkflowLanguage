# Common Workflow Language Examples

These  are some [common workflow language](https://www.commonwl.org) examples that we are using for [search sra](http://www.searchsra.org/). They specify different things that we can do.

# Getting started

Before you begin, you'll need a CWL parser. At the moment we're using [cwltool](https://github.com/common-workflow-language/cwltool) [installed](https://github.com/common-workflow-language/cwltool#install) in a Python 3.6 virtual environment.

# Testing your configs

I use JSON for my configs rather than YAML (because I prefer JSON). However, it can be persnickity to test the config files if you edit them manually.

I use a command like this one:

```bash
python3 json_keys.py -f minimap2.cwl
```

to test whether the JSON file is in the correct format. Very quickly you will get to learn the errors in your JSON ways!

You can download [json_keys.py](https://github.com/linsalrob/EdwardsLab/blob/master/ModelSEED/json_keys.py) from the EdwardsLab git repo.

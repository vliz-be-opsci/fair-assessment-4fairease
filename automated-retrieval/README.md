This tries to automate getting any structured metadata out of the list of dataset url to start with


## Steps to reproduce

### install dependencies

1. install [python](https://www.python.org/downloads/) and (included) the [pip / venv](https://docs.python.org/3/installing/index.html)  -- we recommend python 3.10+


2. recommended: use [vscode](https://code.visualstudio.com/download) (or an equivalent code / development environment) with bash terminal support. On windows the latter comes through gitbash which comes as part of installing [gitscm](https://git-scm.com/downloads) 


3.  Using the bash terminal, create a venv space and start using it

```bash
«prompt» $ python -V                       # double check the release is 3.10+
«prompt» $ python -m venv ./.venv          # creates the virtualenv space in subfolder ./.venv
«prompt» $ source ./.venv/bin/activate)    # activates the virtual env
(.venv) «prompt» $                         # when activate the venv gets prepended into to the prompt
```

following commands should be executed in an active virtual env


4. install the python dependencies for this. Mainly this is about [py-sema](https://github.com/vliz-be-opsci/py-sema)

```bash
(.venv) «prompt» $ pip install -r requirements.txt    # installs the sema module as described in the dependency file
(.venv) «prompt» $ sema-get --help                    # checks if the main script is available -- should give usage 
```


### prepare dump
* create a `urls.txt` file holding all the URLS to fetch and analyse


### execute dump

```bash 
$ ./get-urls.sh                          # make info dumps for all urls

```

### inspect the dump

Running this script will create the following output in the local ./dumps folder:

```bash 
$ tree ./dumps
./dumps/
├── 000-overview.csv
├── 001
│   ├── 00-url-info.txt
│   ├── 01-sema-got-content.ttl
│   ├── trace.csv
│   └── WfXx7LWgaK9WE-00311-42182.html

... and more folders like this per url it processed
```

In detail this contains:

* `./dumps/000-overview.csv` an overview of all the folders it produced, with the urls they captured and the time of execution
* `./dumps/00N/` folder each containing
  * `./dumps/00N/00-url-info.txt`          --> the startpoint-url for the content of this folder
  * `./dumps/00N/01-sema-got-content.ttl`  --> the retrieved structural triple-information (if any)
  * `./dumps/00N/trace.csv                 --> a file that describes the various retrieved files leading up to that
  * `./dumps/00N/*.*                       --> actual retrieved file content as described in `trace.csv`
 
Note: Some of the metadata from the trace.csv is additionally stored as file-attributes on the produced files as well.  These can be traced in the file system like this:

- for linux based systems:
```bash
$ getfattr -d dumps/001/*html
# file: dumps/001/WfXx7LWgaK9WE-00311-42182.html
user.web.mime_type="text/html"
user.web.profile=""
user.web.url="https://www.seanoe.org/data/00311/42182/"
```





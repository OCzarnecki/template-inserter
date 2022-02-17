# Template Inserter
Tool to create files and project stubs from templates. Saves you from having to type `if __name__ == "__main__":` every time you're creating a python
script.

# Installation
## Prerequisites
Make sure you have the following installed

- rev, cut, bash (you probably do)
- fzf (fuzzy find, a great tool)
- rsync (for clever copying)

## Running
Clone this repository, then create a symlink to `insert-template.sh` from
somewhere that's in your path. Eg

```bash
ln -fs "/home/you/location-of-repo/install-template.sh" "/home/you/scripts/install-template"
```

Then run by typing `install-template` into your command line.


# Adding templates
Templates are nothing more than directories in the root of the repository. The template names correspond exactly to those directory names. When you select
a template, the tool copies the contents of the corresponding directory into your local directory (skipping _init.sh), and then runs _init.sh, if it exists. Check out the examples in this repo!

# Python

A must have tool for VSCode python development is [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python).

Once installed for any new projects I recommend creating a new [virtual environment](https://realpython.com/python-virtual-environments-a-primer/).

````python
python -m venv pathToVirtualEnvironment
````

An alternative to using a virtual environment would be to use [anaconda](https://www.anaconda.com/) or [miniconda](https://docs.conda.io/en/latest/miniconda.html)

When VSCode starts when you open a Python file you will automatically be prompted to select a python interpreter. If a virtual environment is installed VSCode will automatically activate it instead.

To select a python interpreter manually press `F1` to open up the command line and type,

````visual
>python: select interpreter
````

Select the first option and you will be prompted to select from the various environments cached by VSCode.

When python is activated it can be called via the `py` alias

## Useful Resources

- [Python Course](https://www.python-course.eu/index.php)
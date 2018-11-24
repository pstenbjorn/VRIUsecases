# VRI Python Code Examples

The Python code examples contained in this directory include custom class objects defined for the entire VRI spec.  Below is a brief description of what can be found in each of the files in this directory.  

| File Name               | File Type     | Description                                                  |
| ----------------------- | ------------- | ------------------------------------------------------------ |
| VriCoreObjects.py       | Python Module | Core class libraries for use to generate VRI python objects  |
| VriSubObjects.py        | Python Module | Sub classes for use with the libraries in the core classes   |
| sampledata.py           | Python Dict   | A reference python dictionary that represents a JSON request |
| vri_calls.py            | Python Code   | Code examples for making use of the Python classes           |



NOTE:  While attempts have been made to allow for various versions of Python, these code samples assume 3.x and specifically were written using v 3.7.0.  The file vri_calls.py may be executed from a command line with no arguments.  It will read from the sampledata.py file and build responses from a small reference data set.


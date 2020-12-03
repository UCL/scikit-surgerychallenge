



# Contributing to scikit-surgerychallange


## Reporting bugs and feature requests

Please create a new [issue](https://github.com/UCL/scikit-surgerychallenge/issues/new) on the issues list.

When reporting a bug, please include:
* The version of scikit-surgerychallange you are using
* Your OS version (for example Windows 10 64-bit, macOS High Sierra, Ubuntu 18.04)
* Detailed steps to reproduce the bug.

## How to contribute to scikit-surgerychallange

1. Find an [issue](https://github.com/UCL/scikit-surgerychallenge/issues) you would like to work and assign it to yourself. You can also [add new issue](https://github.com/UCL/scikit-surgerychallenge/issues/new) to describe your own feature or bugfix.
1. Fork the repository
4. Create a branch for your changes. The branch name should start with the issue number, followed by hyphen separated words describing the issue. For example: `1-add-contributing-guidelines`
5. Make your changes following the coding guidelines below.
6. Commit and push your changes to the branch on your fork. The commit message should start with `Issue #<issue number>: `, for example: `Issue #1: fixed typo`. Commit in small, related chunks. Review each commit and explain its purpose in the commit message.
7. When finished, submit a merge request: 

## Design Considerations

1. As few dependencies as possible. Try to stick to standard packages like numpy and pandas etc.
2. Discuss extra dependencies with the team and maybe the outcome will be to create a new separate package, where you can be more specific and more modular.
3. Unit test well, using pytest, with good coverage.
4. All errors as exceptions rather than return codes.


## Coding guidelines

1. Make sure that tests passes. You may disable specific warnings within the code where it is reasonable to do so
2. Include comments to make your code easily understandable.
3. Add unit tests for new and modified code
4. Make sure all existing and new tests pass
5. Make sure all docstrings have been added
6. Make sure all dependencies have been added to requirements
7. Make sure your code works for all required versions of Python
8. Make sure your code works for all required operating systems
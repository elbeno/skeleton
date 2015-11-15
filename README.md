# Skeleton

A quick project skeleton for easily starting new C++ projects and experiments. A test and library project is provided, using `cmake` to build.

## To make a new project

```bash
~/skeleton $ . new.sh foo
```

This copies the contents of `skeleton` to a sibling directory `foo`, creates an empty git repo there, and drops you there to start hacking.

`clean.sh` is provided to completely clean up the results of running `scons`.

Happy hacking!

### Status
[![Build Status](https://travis-ci.org/elbeno/skeleton.svg?branch=master)](https://travis-ci.org/elbeno/skeleton)

Skeleton is distributed under <some license>. See LICENSE for details.

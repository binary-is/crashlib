Crashlib 1.0.2
==============

Purpose
-------
Crashlib provides linkable functions for crashing programs written in C or C++, possibly taking the operating system down with them.

It serves no known purpose. To our knowledge it is not useful in any way.

Four function are provided:

1. Divide by zero: `crash_divbyzero()`

2. Segmentation fault: `crash_segfault()`

3. Infinite loop: `crash_loop()`

4. Fork-bomb: `crash_forkbomb()`.

Preparation
-----------
The libtool binary must be installed. On a Debian-based system, that would entail running the following command:

    sudo apt-get -y install libtool-bin

Installation
------------

1. Build the shared library.

   `make`

2. Install the shared library.

    `make install`

3. (Optional) Build the test application. Step 2 must have succeeded for this to work.

    `make testapp`

4. (Optional) Run the test application, which will produce a segmentation fault. Should be harmless.

    `./testapp`

Uninstallation
--------------
- make uninstall

Version history
---------------
* 2002-10-31. Version 1.0: Original version.

* xxxx-xx-xx. Version 1.0.1: Can't remember. Probably nothing of any importance.

* 2019-01-05. Version 1.0.2: License changed from GPL to MIT. Testapp created. PREFIX-support in Makefile. README updated.

Authors
-------
* Helgi Hrafn Gunnarsson <helgi@binary.is>

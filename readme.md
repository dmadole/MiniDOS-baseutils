# MiniDOS-baseutils

This meta-project will build all of the individual Mini/DOS base utilities at once, and can also make a combined lbr archive of them ready for transferring to Mini/DOS and unpacking.

To pull the complete set at once from the command line you can do the following, if you have git 1.6.5 or later:
```
git clone --recursive https://github.com/dmadole/MiniDOS-baseutils
```
For older versions of git, 1.5 or later, you will need to use instead: 
```
git clone https://github.com/dmadole/MiniDOS-baseutils
cd MiniDOS-baseutils
git submodule update --init --recursive
```
To build all binaries:
```
make
```

To build an lbr of all binaries:
```
make lbr
```

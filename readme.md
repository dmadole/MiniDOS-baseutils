# MiniDOS-baseutils

This meta-project will build all of the individual Mini/DOS base utilities at once, and can also make a combined lbr archive of them ready for transferring to Mini/DOS and unpacking.

To pull the package and all submodules at once using the command line you can do the following, if you have git 1.6.5 or later:
```
git clone --recursive https://github.com/dmadole/MiniDOS-baseutils
```
For older versions of git, 1.5 or later, you will need to use instead: 
```
git clone https://github.com/dmadole/MiniDOS-baseutils
cd MiniDOS-baseutils
git submodule update --init --recursive
```
Once you have the package and submodules, to build all the binaries:
```
make
```
Or, to build an lbr of all the binaries:

> [!NOTE]
> Makeing an lbr require the lbradd script to be installed, see https://github.com/dmadole/lbradd

```
make lbr
```
Note that commits of the baseutils package are linked to specific commits of submodules, so even as the submodule repositories are updated, a pull of a specific baseutils commit (or tag) will always build the same set of binaries and lbr. In this way, baseutils can have it's own specific consistent releases even as the individual utilies are moving targets.

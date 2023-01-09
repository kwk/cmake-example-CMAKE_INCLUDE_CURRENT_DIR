This project demonstrates the usage of `CMAKE_INCLUDE_CURRENT_DIR` when it gets
set in an included cmake module (`cmake/Module/EnableCurrentIncludeDir.cmake`).

`CMAKE_INCLUDE_CURRENT_DIR` is relative **not** to the place in which it is set,
i.e. the CMake module, it is relative to the place in which make/ninja is
currently processing files in the build tree.

Run `make` to see the whole project build.
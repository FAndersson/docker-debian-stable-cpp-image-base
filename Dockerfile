# Docker image containing generic tools for C++ development, based on base development image for Debian stable.

FROM fredrikandersson/debian-stable-dev-image-base:2022-05-09

# Basic build/development tools
RUN apt-get update --quiet --yes && apt-get install --quiet --yes cmake cppcheck make ninja-build python3 python3-pip valgrind
# Doxygen
RUN apt-get update --quiet --yes && apt-get install --quiet --yes doxygen doxygen-latex graphviz
# Pybind11
RUN apt-get update --quiet --yes && apt-get install --quiet --yes pybind11-dev python3-pybind11
# Conan package manager
RUN pip install conan

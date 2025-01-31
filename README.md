# glfw-bazel
GLFW targets for Bazel

Currently targets GLFW version 3.4

Requires `libgl1-mesa-dev` and `xorg-dev` packages for x11 system dependencies.

# Installation:
Add the following to your `MODULE` file:

```
bazel_dep(name = "glfw-bazel")
archive_override(
    module_name = "glfw-bazel",
    strip_prefix = "glfw-bazel-main",
    urls = "https://github.com/jeh15/glfw-bazel/archive/refs/heads/main.zip"
)
```
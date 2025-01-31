"""
    Fetch HTTP archive of GLFW release.
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def glfw_archive(ctx):
    version = "3.4"
    url = "https://github.com/glfw/glfw/archive/{version}.tar.gz".format(version=version)

    http_archive(
        name = "archive_glfw",
        build_file = "//third_party/glfw:BUILD.bazel",
        strip_prefix = "glfw-{version}".format(version=version),
        url = url,
        integrity = "sha256-wDjTQgAjTQcfrpNFvEVeSo8vVEq2AVB2XXcE4I89rAE=",
    )

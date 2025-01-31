"""
    Module extension implementation for Mujoco
"""
load("//third_party:repositories.bzl", "glfw_archive")

def glfw_implementation(ctx):
    glfw_archive(ctx)

glfw_extension = module_extension(
    implementation = glfw_implementation,
)
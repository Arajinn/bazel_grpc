load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
 
http_archive(
    name = "com_github_grpc_grpc",
    strip_prefix = "grpc-1.66.0",
    sha256 = "eacf07e6354b6a30056b0338027b20c7f5a1da556a674d108cea1b8938d7abec",
    urls = ["https://github.com/grpc/grpc/archive/refs/tags/v1.66.0.tar.gz"],
)
 
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
 
grpc_deps()
 
load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")
 
grpc_extra_deps()
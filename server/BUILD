package(default_visibility = ["//visibility:public"])

cc_binary(
  name = "server",
  srcs = ["server.cpp"],
  deps = [
      "//proto:hello_world",
      "@com_github_grpc_grpc//:grpc++",
      "@com_github_grpc_grpc//:grpc++_reflection",
      "@com_google_absl//absl/flags:flag",
      "@com_google_absl//absl/flags:parse",
  ],
)
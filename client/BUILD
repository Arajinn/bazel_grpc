package(default_visibility = ["//visibility:public"])

cc_binary(
  name = "client",
  srcs = ["client.cpp"],
  deps = [
      "//proto:hello_world",
      "@com_github_grpc_grpc//:grpc++",
      "@com_google_absl//absl/flags:flag",
      "@com_google_absl//absl/flags:parse",
  ],
)
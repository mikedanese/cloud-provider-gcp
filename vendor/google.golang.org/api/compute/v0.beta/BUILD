load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["compute-gen.go"],
    importmap = "k8s.io/cloud-provider-gcp/vendor/google.golang.org/api/compute/v0.beta",
    importpath = "google.golang.org/api/compute/v0.beta",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/google.golang.org/api/gensupport:go_default_library",
        "//vendor/google.golang.org/api/googleapi:go_default_library",
    ],
)

load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["logs.go"],
    importmap = "k8s.io/cloud-provider-gcp/vendor/k8s.io/component-base/logs",
    importpath = "k8s.io/component-base/logs",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/spf13/pflag:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/util/wait:go_default_library",
        "//vendor/k8s.io/klog:go_default_library",
    ],
)

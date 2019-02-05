load("@io_bazel_rules_go//go:def.bzl", "go_library")

# gazelle:ignore

# This library overrides the upstream
# 'k8s.io/kubernetes/pkg/cloudprovider/providers' package, linking only the gce
# cloud provider. We need this until we don't have any transient dependencies
# on the upstream package.
#
# See: https://github.com/kubernetes/kubernetes/pull/73509
go_library(
    name = "go_default_library",
    srcs = ["providers.go"],
    importpath = "k8s.io/kubernetes/pkg/cloudprovider/providers",
    visibility = ["//visibility:public"],
    deps = ["//vendor/k8s.io/kubernetes/pkg/cloudprovider/providers/gce:go_default_library"],
)

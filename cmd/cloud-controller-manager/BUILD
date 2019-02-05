load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["controller-manager.go"],
    importpath = "k8s.io/cloud-provider-gcp/cmd/cloud-controller-manager",
    visibility = ["//visibility:private"],
    deps = [
        "//cmd/cloud-controller-manager/app:go_default_library",
        "//cmd/cloud-controller-manager/app/cloudprovider:go_default_library",
        "//vendor/github.com/spf13/pflag:go_default_library",
        "//vendor/k8s.io/apiserver/pkg/util/flag:go_default_library",
        "//vendor/k8s.io/apiserver/pkg/util/logs:go_default_library",
        "//vendor/k8s.io/kubernetes/pkg/client/metrics/prometheus:go_default_library",
        "//vendor/k8s.io/kubernetes/pkg/version/prometheus:go_default_library",
    ],
)

go_binary(
    name = "cloud-controller-manager",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)

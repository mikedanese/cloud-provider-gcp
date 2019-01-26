load("@io_bazel_rules_go//go:def.bzl", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["photon.go"],
    importmap = "k8s.io/cloud-provider-gcp/vendor/k8s.io/kubernetes/pkg/cloudprovider/providers/photon",
    importpath = "k8s.io/kubernetes/pkg/cloudprovider/providers/photon",
    visibility = ["//visibility:public"],
    deps = [
        "//vendor/github.com/vmware/photon-controller-go-sdk/photon:go_default_library",
        "//vendor/gopkg.in/gcfg.v1:go_default_library",
        "//vendor/k8s.io/api/core/v1:go_default_library",
        "//vendor/k8s.io/apimachinery/pkg/types:go_default_library",
        "//vendor/k8s.io/cloud-provider:go_default_library",
        "//vendor/k8s.io/klog:go_default_library",
        "//vendor/k8s.io/kubernetes/pkg/apis/core/v1/helper:go_default_library",
    ],
)

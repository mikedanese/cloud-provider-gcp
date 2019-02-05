load("@bazel_gazelle//:def.bzl", "gazelle")

# gazelle:prefix k8s.io/cloud-provider-gcp
# gazelle:resolve go k8s.io/kubernetes/pkg/cloudprovider/providers //cmd/cloud-controller-manager/app/cloudprovider:go_default_library

gazelle(
    name = "gazelle",
    extra_args = [
        "-build_file_name=BUILD",
        "-proto=disable_global",
    ],
)

gazelle(
    name = "gazelle-diff",
    extra_args = [
        "-build_file_name=BUILD",
        "-proto=disable_global",
        "-mode=diff",
    ],
)

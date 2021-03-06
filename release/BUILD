package(default_visibility = ["//visibility:public"])

load("@io_k8s_repo_infra//defs:build.bzl", "release_filegroup")
load("@io_k8s_repo_infra//defs:pkg.bzl", "pkg_tar")

# We depend on the behavior that pkg_tar will use the first file that it sees
# in case of duplicates. I'm open for building something with more explicit
# support for overlaying release artifacts.
pkg_tar(
    name = "kubernetes-server-linux-amd64",
    srcs = [
        "//cmd/cloud-controller-manager",
        "//cmd/cloud-controller-manager:cloud-controller-manager.docker_tag",
        "//cmd/cloud-controller-manager:image.tar",
    ],
    extension = "tar.gz",
    remap_paths = {
        "/cloud-controller-manager-image.tar": "kubernetes/server/bin/cloud-controller-manager.tar",
        "/cloud-controller-manager.docker_tag": "kubernetes/server/bin/cloud-controller-manager.docker_tag",
        "/cloud-controller-manager": "kubernetes/server/bin/cloud-controller-manager",
    },
    deps = [
        "@io_k8s_release//:kubernetes-server-linux-amd64",
    ],
)

pkg_tar(
    name = "kubernetes-manifests",
    extension = "tar.gz",
    deps = [
        "//deploy:addon",
        "//deploy:manifest",
        "@io_k8s_release//:kubernetes-manifests",
    ],
)

release_filegroup(
    name = "release-tars",
    srcs = [
        ":kubernetes-manifests.tar.gz",
        ":kubernetes-server-linux-amd64.tar.gz",
        "@io_k8s_release//:kubernetes-node-linux-amd64",
    ],
)

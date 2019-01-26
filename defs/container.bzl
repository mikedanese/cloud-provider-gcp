load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_image",
    "container_push",
)
load(
    "@io_bazel_rules_docker//container:bundle.bzl",
    "container_bundle",
)

# image macro creates basic image and push rules for a main
def image(binary, visibility = ["//visibility:public"]):
    if len(binary) == 0:
        fail("binary is a required argument")
    if binary[0] != ":":
        fail("binary must be a package local label")
    name = binary[1:]
    image = name + "-image-internal"
    container_image(
        name = image,
        cmd = ["/" + name],
        files = [":" + name],
        stamp = True,
        base = "@distroless//image",
        visibility = visibility,
    )
    image_repo = "{STABLE_IMAGE_REPO}"
    repository = image_repo + "/" + name
    container_push(
        name = "publish",
        format = "Docker",
        image = image,
        registry = "gcr.io",
        repository = repository,
        stamp = True,
        tag = "{STABLE_IMAGE_TAG}",
    )
    container_bundle(
        name = name + "-image",
        images = {
            "gcr.io/" + repository + ":{STABLE_IMAGE_TAG}": image,
        },
        stamp = True,
        visibility = visibility,
    )
    native.genrule(
        name = name + "_docker_tag",
        srcs = [image],
        outs = [name + ".docker_tag"],
        cmd = "grep ^STABLE_IMAGE_TAG bazel-out/stable-status.txt | awk '{print $$2}' >$@",
        stamp = 1,
        visibility = visibility,
    )

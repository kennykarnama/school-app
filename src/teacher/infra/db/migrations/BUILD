load("@rules_oci//oci:defs.bzl", "oci_image", "oci_push", "oci_tarball")
load("@rules_pkg//:pkg.bzl", "pkg_tar")

pkg_tar(
    name = "app_layer",
    srcs = glob(["*.sql"]),
)

oci_image(
    name = "school-teacher-migrator-image",
    base = "@gomigrate_base",
    entrypoint = [
        "/migrate",
        "-verbose",
        "-path",
        "./",
    ],
    env = {
        "DSN": "",
    },
    tars = [":app_layer"],
)

oci_tarball(
    name = "app_tarball",
    image = ":school-teacher-migrator-image",
    repo_tags = ["school-teacher-migrator:latest"],
)

oci_push(
    name = "push",
    image = ":school-teacher-migrator-image",
    remote_tags = ["teacher-migrator"],
    repository = "index.docker.io/kennykarnama/school-app",
)

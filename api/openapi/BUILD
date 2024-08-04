# gazelle:ignore

load("@io_bazel_rules_go//go:def.bzl", "go_library")
load("//:build/oapi-codegen.bzl", "oapi_codegen")

oapi_codegen(
    name = "school_api",
    out = "school.gen.go",
    generate = [
        "types",
        "client",
        "gin-server",
    ],
    package = "genapi",
    spec = "dist/school.yaml",
    visibility = ["//visibility:public"],
)

go_library(
    name = "generate",
    srcs = [
        "school.gen.go",
    ],
    importpath = "github.com/kennykarnama/school-app/api/openapi",
    visibility = ["//visibility:public"],
    deps = [
        "@com_github_gin_gonic_gin//:gin",
        "@com_github_oapi_codegen_runtime//:runtime",
        "@com_github_oapi_codegen_runtime//types",
    ],
)

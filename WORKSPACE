load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "openapi_tools_generator_bazel",
    sha256 = "bdec4feb06144a1dc0a6f9955de9f0079a98b7442275bc84a4fd00452437c945",
    urls = ["https://github.com/OpenAPITools/openapi-generator-bazel/releases/download/0.1.5/openapi-tools-generator-bazel-0.1.5.tar.gz"],
)

load("@openapi_tools_generator_bazel//:defs.bzl", "openapi_tools_generator_bazel_repositories")

# You can provide any version of the CLI that has been uploadd to Maven
openapi_tools_generator_bazel_repositories(
    openapi_generator_cli_version = "5.0.1",
)

package(
    default_testonly = 1,
    default_visibility = ["//visibility:private"],
)

licenses(["notice"])

COPTS = [
    "-O3",
    "-Wall",
]

cc_library(
    name = "kdl",
    srcs = glob([
	"src/*.cpp",
	"src/utilities/*.cxx",
	"src/utilities/*.cpp",
    ]),
    hdrs = glob([
        "src/*.hpp",
        "src/*.inl",
        "src/*.h",
	"src/utilities/*.h",
	"src/utilities/*.hpp",
    ]),
    includes = [
	".",
        "src",
	"src/utilities",	
    ],
    copts = COPTS,

    deps = [
        "//external:Eigen3",
    ],

    visibility = ["//visibility:public"],
)

load("extension", "kdl_add_test")

# Creating a native genrule.
kdl_add_test("framestest", "-ldl")
kdl_add_test("kinfamtest", "-ldl")
kdl_add_test("solvertest", "-ldl")
kdl_add_test("inertiatest", "-ldl")
kdl_add_test("jacobiantest", "-ldl")
kdl_add_test("jacobiandottest", "-ldl")
kdl_add_test("velocityprofiletest", "-ldl")



package(
    default_testonly = 1,
    default_visibility = ["//visibility:private"],
)

licenses(["LGPL"])

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
        "//third_party/eigen3:eigen3",
    ],

    visibility = ["//visibility:public"],
)

load("extension", "kdl_add_test", "kdl_add_test_qnx")

# Creating a native genrule.
kdl_add_test("framestest")
kdl_add_test("kinfamtest")
kdl_add_test("solvertest")
kdl_add_test("inertiatest")
kdl_add_test("jacobiantest")
kdl_add_test("jacobiandottest")
kdl_add_test("velocityprofiletest")

#kdl_add_test_qnx("framestest") 
#kdl_add_test_qnx("kinfamtest")
#kdl_add_test_qnx("solvertest")
#kdl_add_test_qnx("inertiatest")
#kdl_add_test_qnx("jacobiantest")
#kdl_add_test_qnx("jacobiandottest")
#kdl_add_test_qnx("velocityprofiletest")



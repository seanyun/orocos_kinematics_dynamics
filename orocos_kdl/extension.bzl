def kdl_add_test(name, libs="", visibility=None):
  # Creating a native genrule.
  COPTS_TEST = ["-DTESTNAME=\"\\\""+name+"\\\"\""]

  native.cc_test(
    name = name,
    size = "small",
    srcs = ["tests/test-runner.cpp",
	"tests/" + name + ".cpp", 
	"tests/" + name + ".hpp"],
    includes = [
	".",
	"tests/",],
    deps = [
	":kdl",
	"//external:cppunit"],
    copts = COPTS_TEST, 
    linkopts = ["-lm", libs],
    visibility = visibility,
  )

def kdl_add_test_noheader(name, libs="", visibility=None):
  # Creating a native genrule.
  COPTS_TEST = ["-DTESTNAME=\"\\\""+name+"\\\"\""]

  native.cc_test(
    name = name,
    size = "small",
    srcs = ["tests/test-runner.cpp",
	"tests/" + name + ".cpp"],
    includes = [
	".",
	"tests/",],
    deps = [
	":kdl",
	"//external:cppunit"],
    copts = COPTS_TEST, 
    linkopts = ["-lm", libs],
    visibility = visibility,
  )

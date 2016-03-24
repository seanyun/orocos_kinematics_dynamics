def kdl_add_test(name, visibility=None):
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
	"//third_party/cppunit:cppunit"],
    copts = COPTS_TEST, 
    linkopts = ["-lm", "-ldl"],
    visibility = visibility,
  )

def kdl_add_test_qnx(name, libs="", visibility=None):
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
	"//third_party/cppunit:cppunit"],
    copts = COPTS_TEST, 
    linkopts = ["-lm"],
    visibility = visibility,
  )

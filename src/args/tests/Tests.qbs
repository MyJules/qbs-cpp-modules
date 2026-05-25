import qbs

Product {
    name: "args-tests"
    type: ["application"]

    property string googletestDir: project.vendorDir + "/googletest/googletest"

    Depends { name: "cpp" }
    Depends { name: "CppStd" }
    Depends { name: "args" }
    Depends { name: "gtest" }

    files: [
        "args_tests.cpp",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
    cpp.includePaths: [
        googletestDir + "/include",
    ]
}
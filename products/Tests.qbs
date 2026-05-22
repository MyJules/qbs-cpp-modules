import qbs

Product {
    name: "args-tests"
    type: ["application"]

    property string googletestDir: project.vendorDir + "/googletest/googletest"

    Depends { name: "cpp" }
    Depends { name: "CppStd" }
    Depends { name: "args-lib" }
    Depends { name: "gtest" }

    files: [
        project.sourceDirectory + "/tests/args_tests.cpp",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
    cpp.includePaths: [
        googletestDir + "/include",
    ]
}
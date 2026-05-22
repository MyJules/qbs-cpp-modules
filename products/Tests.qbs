import qbs

Product {
    name: "hello-tests"
    type: ["application"]

    Depends { name: "cpp" }
    Depends { name: "CppStd" }
    Depends { name: "hello-lib" }
    Depends { name: "gtest" }

    files: [
        project.sourceDirectory + "/tests/hello_tests.cpp",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
    cpp.includePaths: [
        project.googletestDir + "/include",
    ]
}
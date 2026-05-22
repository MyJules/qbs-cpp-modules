import qbs

Product {
    name: "qbs-modules-demo"
    type: ["application"]

    Depends { name: "cpp" }
    Depends { name: "CppStd" }
    Depends { name: "hello-lib" }

    files: [
        project.sourceDirectory + "/main.cpp",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
}
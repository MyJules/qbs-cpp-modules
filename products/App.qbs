import qbs

Product {
    name: "app"
    type: ["application"]

    Depends { name: "cpp" }
    Depends { name: "CppStd" }
    Depends { name: "args-lib" }

    files: [
        project.sourceDirectory + "/src/main.cpp",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
    cpp.includePaths: []
}
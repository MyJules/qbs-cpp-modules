import qbs

Product {
    name: "qbs-modules-demo"
    type: ["application"]

    property string raylibDir: project.vendorDir + "/raylib"

    Depends { name: "cpp" }
    Depends { name: "CppStd" }
    Depends { name: "hello-lib" }
    Depends { name: "raylib" }

    files: [
        project.sourceDirectory + "/src/main.cpp",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
    cpp.includePaths: [
        raylibDir + "/src",
    ]
}
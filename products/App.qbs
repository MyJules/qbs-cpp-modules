import qbs

Product {
    name: "app"
    type: ["application"]

    property string raylibDir: project.vendorDir + "/raylib"

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
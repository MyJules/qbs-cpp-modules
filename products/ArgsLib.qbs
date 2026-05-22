import qbs

Product {
    name: "args-lib"
    type: ["staticlibrary"]

    Depends { name: "cpp" }
    Depends { name: "CppStd" }

    files: [
        project.sourceDirectory + "/src/args.cppm",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
}
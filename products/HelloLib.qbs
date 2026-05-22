import qbs

Product {
    name: "hello-lib"
    type: ["staticlibrary"]

    Depends { name: "cpp" }
    Depends { name: "CppStd" }

    files: [
        project.sourceDirectory + "/hello.cppm",
    ]

    cpp.cxxLanguageVersion: "c++23"
    cpp.forceUseCxxModules: true
}
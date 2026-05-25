import qbs

Project {
    references: [
        "tests/Tests.qbs",
    ]

    Product {
        name: "args"
        type: ["staticlibrary"]

        Depends { name: "cpp" }
        Depends { name: "CppStd" }

        files: [
            "args.cppm",
        ]

        cpp.cxxLanguageVersion: "c++23"
        cpp.forceUseCxxModules: true
    }
}
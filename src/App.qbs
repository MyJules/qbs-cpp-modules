import qbs

Project {
    references: [
        "args/ArgsLib.qbs",
    ]

    Product {
        name: "app"
        type: ["application"]

        Depends { name: "cpp" }
        Depends { name: "CppStd" }
        Depends { name: "args" }

        files: [
            "main.cpp",
        ]

        cpp.cxxLanguageVersion: "c++23"
        cpp.forceUseCxxModules: true
        cpp.includePaths: []
    }
}
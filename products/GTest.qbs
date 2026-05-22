import qbs

Product {
    name: "gtest"
    type: ["staticlibrary"]

    Depends { name: "cpp" }

    files: [
        project.googletestDir + "/src/gtest-all.cc",
    ]

    cpp.cxxLanguageVersion: "c++17"
    cpp.includePaths: [
        project.googletestDir,
        project.googletestDir + "/include",
    ]
}
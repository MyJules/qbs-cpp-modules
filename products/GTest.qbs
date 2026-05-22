import qbs

Product {
    name: "gtest"
    type: ["staticlibrary"]

    property string googletestDir: project.vendorDir + "/googletest/googletest"

    Depends { name: "cpp" }

    files: [
        googletestDir + "/src/gtest-all.cc",
    ]

    cpp.cxxLanguageVersion: "c++17"
    cpp.includePaths: [
        googletestDir,
        googletestDir + "/include",
    ]
}
import qbs

Project {
    minimumQbsVersion: "3.0"

    property string vendorDir: sourceDirectory + "/vendor"

    references: [
        "src/App.qbs",
        "qbs/CppStd.qbs",
        "vendor/GTest.qbs"
    ]
}

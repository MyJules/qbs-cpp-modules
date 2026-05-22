import qbs

Project {
    minimumQbsVersion: "3.0"

    property string vendorDir: sourceDirectory + "/vendor"

    references: [
        "products/CppStd.qbs",
        "products/ArgsLib.qbs",
        "products/GTest.qbs",
        "products/Raylib.qbs",
        "products/App.qbs",
        "products/Tests.qbs",
    ]
}

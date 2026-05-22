import qbs

Project {
    minimumQbsVersion: "3.0"

    property string googletestDir: sourceDirectory + "/vendor/googletest/googletest"

    references: [
        "products/CppStd.qbs",
        "products/HelloLib.qbs",
        "products/GTest.qbs",
        "products/App.qbs",
        "products/Tests.qbs",
    ]
}

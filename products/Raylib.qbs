import qbs

Product {
    name: "raylib"
    type: ["staticlibrary"]

    property string raylibDir: project.vendorDir + "/raylib"

    Depends { name: "cpp" }

    files: [
        raylibDir + "/src/raudio.c",
        raylibDir + "/src/rcore.c",
        raylibDir + "/src/rglfw.c",
        raylibDir + "/src/rmodels.c",
        raylibDir + "/src/rshapes.c",
        raylibDir + "/src/rtext.c",
        raylibDir + "/src/rtextures.c",
    ]

    cpp.cLanguageVersion: "c17"
    cpp.includePaths: [
        raylibDir + "/src",
        raylibDir + "/src/external/glfw/include",
    ]
    cpp.defines: [
        "PLATFORM_DESKTOP",
        "GRAPHICS_API_OPENGL_33",
        "_CRT_SECURE_NO_WARNINGS",
    ]
    cpp.dynamicLibraries: {
        var libraries = [];
        if (qbs.targetOS.contains("windows")) {
            libraries = ["opengl32", "gdi32", "user32", "winmm", "shell32"];
        }
        return libraries;
    }
}
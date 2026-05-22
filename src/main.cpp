import std;
import hello;

#include "raylib.h"

int main()
{
    std::vector names{std::string_view{"Qbs"}};
    std::ranges::for_each(names, [](std::string_view name) {
        Hello::printHello(name);
    });

    InitWindow(800, 450, "qbs-modules-demo");
    SetTargetFPS(60);

    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("Hello from raylib", 220, 180, 32, DARKGRAY);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}

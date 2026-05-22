import std;
import args;

#include "raylib.h"

int main(int argc, const char* argv[])
{
    const auto args_span = args::to_span(argc, argv);
    std::println("Arguments: {} ", args_span);

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

project "Imgui"
    kind "StaticLib"
    language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("intermidiate/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
        ".",
        "./backends",
        "../GLFW/include",
    }

    files
    {
        "imconfig.h",
        "imgui_demo.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imgui.cpp",
        "imgui.h",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_draw.cpp",
        "./backends/imgui_impl_glfw.h",
        "./backends/imgui_impl_glfw.cpp",
        "./backends/imgui_impl_opengl3.h",
        "./backends/imgui_impl_opengl3.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"

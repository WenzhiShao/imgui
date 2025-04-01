project "Imgui"
    kind "StaticLib"
    language "C++"
 
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("intermidiate/" .. outputdir .. "/%{prj.name}")
 
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
    }
    
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
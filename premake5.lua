Project 'ImGui'
    kind "StaticLib"
    language "C++"
    staticruntime "off" -- Sets <RuntimeLibrary> to "MultiThreadedDLL" 

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    obj ("obj/" .. outputdir .. "/%{prj.name}")

    files 
    {
        'imgui.h',
        'imgui_internal.h',
        'imconfig.h',
        'imstb_rectpack.h',
        'imstb_textedit.h',
        'imstb_truetype.h',
        
        'imgui.cpp',
        'imgui_demo.cpp',
        'imgui_draw.cpp',
        'imgui_tables.cpp',
        'imgui_widgets.cpp'
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
    
    filter "system:linux"
        systemversion "latest"
        cppdialect "C++17"
        pic "On"  -- Position independent code [links static and dynamic libraries]

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

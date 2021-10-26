project "ImGui"
<<<<<<< docking
<<<<<<< docking
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"

<<<<<<< docking
=======
    kind "StaticLib"
    language "C++"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

>>>>>>> Added premake file.
    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }
    
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
<<<<<<< docking
=======
=======
	kind "StaticLib"
	language "C++"

>>>>>>> Added support for linux
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
<<<<<<< docking
<<<<<<< docking
        "imgui_tables.cpp",
=======
>>>>>>> Added support for linux
=======
        "imgui_tables.cpp",
>>>>>>> Update Premake
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

   includedirs {
       "../freetype/include"
   }

	filter "system:windows"
		systemversion "latest"
<<<<<<< docking
<<<<<<< docking
<<<<<<< docking
		cppdialect "C++17"
		staticruntime "On"
>>>>>>> Added support for linux
=======
		staticruntime(WinCRunTime_Type)
>>>>>>> Static Runtime variable
=======
>>>>>>> Added premake file.
=======
		cppdialect "C++17"
		staticruntime "On"
>>>>>>> Added support for linux
=======
		staticruntime(WinCRunTime_Type)
>>>>>>> Static Runtime variable

	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"

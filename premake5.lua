project "SPIRV-Tools"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	
	}

    defines
    {
    }

    includedirs
    {
    }

	filter "system:windows"
		systemversion "latest"
		staticruntime "off"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter {"configurations:Dist"}
        runtime "Release"
        optimize "on"
			
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
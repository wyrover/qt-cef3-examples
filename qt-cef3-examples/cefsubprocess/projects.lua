BOOK_CODE_PATH = "."
THIRD_PARTY = "./3rdparty"
WORK_PATH = os.getcwd()
includeexternal (BOOK_CODE_PATH .. "/premake-vs-include.lua")


workspace(path.getname(os.realpath(".")))
    language "C++"
    location "build/%{_ACTION}/%{wks.name}"    
    if _ACTION == "vs2017" then
        toolset "v141_xp"
    elseif _ACTION == "vs2015" then
        toolset "v140_xp"    
    elseif _ACTION == "vs2013" then
        toolset "v120_xp"
    end


    project "cefsubprocess"        
        kind "WindowedApp"
        entrypoint ""
        flags { "NoManifest" }
        files
        {
            "main.cpp",
            "../cefqtclient/clientapp.cpp",
            "../cefqtclient/clientapp.h",
                                  
        }        
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp"}
        }  
        includedirs
        {
            "../3rdparty/cef3440"
        }
        libdirs
        {
            "../3rdparty/cef3440/lib"
        }
        links
        {
            "libcef.lib",
            "libcef_dll_wrapper.lib"
        }

 

        



-- x86
workspace "Simple-DLL-Loader-x86"
   configurations { "Release", "Debug" }
   architecture "x86"
   location "build"
   
project "Simple-DLL-Loader-x86"
   kind "SharedLib"
   language "C++"
   targetdir "bin/x86/%{cfg.buildcfg}"
   targetname "dinput8"
   targetextension ".dll"
   
   includedirs { "source" }
   includedirs { "external" }
   
   files { "source/dllmain.h", "source/dllmain.cpp" }
   files { "source/x86.def" }

   characterset ("MBCS")
   
   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
      flags { "StaticRuntime" }
      
-- x64
workspace "Simple-DLL-Loader-x64"
   configurations { "Release", "Debug" }
   architecture "x86_64"
   location "build"
   
   defines { "X64" }
     
project "Simple-DLL-Loader-x64"
   kind "SharedLib"
   language "C++"
   targetdir "bin/x64/%{cfg.buildcfg}"
   targetname "dinput8"
   targetextension ".dll"
   
   includedirs { "source" }
   includedirs { "external" }
   
   files { "source/dllmain.h", "source/dllmain.cpp" }
   files { "source/x64.def" }
   
   characterset ("MBCS")
   
   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
      flags { "StaticRuntime" }

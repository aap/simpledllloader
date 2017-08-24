Simple DLL Loader
===================
fork of the Ultimate ASI Loader

DESCRIPTION
------------------------
This is a DLL file which adds DLL plugin loading functionality to any game which uses any of the following libraries:
* d3d8.dll
* d3d9.dll
* d3d11.dll
* ddraw.dll
* dinput.dll
* dinput8.dll (x86 and x64)
* dsound.dll (x86 and x64)
* msacm32.dll
* msvfw32.dll
* vorbisFile.dll
* winmmbase.dll
* xlive.dll


INSTALLATION
------------------------
In order to install it, you just need to place DLL into game directory. Usually it works as dinput8.dll, but if it's not, there is a possibility to rename it(see the list of supported names above).
In the case of vorbisFile.dll, rename the original vorbisFile.dll to vorbisFileHooked.dll first.


USAGE
------------------------
create a file "dlls.txt" in the same directory as the DLLloader dll with one file name per line to load as a dll.
The filenames are relative to the dll.
A # character at the beginning of the line will make the DLLloader ignore it.

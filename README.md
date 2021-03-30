# createclass with command
createclass with cpp and header using a powershell script
!!! you need to have powershell installed (normally contained in the Windows 10 standart installation)
!!! if you wand a guide to how to install powershell follow thi link: https://docs.microsoft.com/de-de/powershell/scripting/install/installing-powershell?view=powershell-7.1

syntax:
PS:>createclass nameofclass -nolib

"nameofclass" should be replaced with the name you want to name your class

"-nolib" is optional if addet it will create both the header and cpp file in current directory
not using "-nolib" will result in (if they don't already exist) creating a "src" and "include" folder and placing the header-file in "include" and source-file in "src"

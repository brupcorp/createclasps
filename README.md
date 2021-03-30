# createclass with command
createclass with cpp and header using a powershell script

!!! you need to have powershell installed (normally contained in the Windows 10 standart installation)

!!! if you wand a guide to how to install powershell follow this link: https://docs.microsoft.com/de-de/powershell/scripting/install/installing-powershell?view=powershell-7.1

syntax:
PS:>createclass nameofclass -nodir

"nameofclass" should be replaced with the name you want to name your class

"-nodir" is optional if added it will create both the header and cpp file in the current directory. 
Not using "-nolib" will result in (if they don't already exist) creating a "src" and "include" folder and placing the header-file in "include" and source-file in "src"

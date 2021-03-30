# createclass with command
createclass with cpp and header using a powershell script

syntax: createclass nameofclass -nolib

"nameofclass" should be replaced with the name you want to name your class

"-nolib" is optional if addet it will create both the header and cpp file in current directory
not using "-nolib" will result in (if they don't already exist) creating a "src" and "include" folder and placing the header-file in "include" and source-file in "src"

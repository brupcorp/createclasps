# createclass with command
createclass with cpp and header using a powershell script

syntax: createclass < nameofclass > -nolib

"-nolib" is optional if addet it will create both the header and cpp file in current directory
not using "-nolib" will result in (if they don't already exist) creating a "src" and "include" folder and placing the header-file in "include" and source-file in "src"

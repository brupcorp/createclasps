# Function createclassc {
#     [CmdletBinding()]
#     param (
#         [Parameter(Mandatory = $true)][string]$name,
#         [switch]$nodir
#     )
    
#     if ($nodir) {
#         New-Item -Path . -Name "$name.h" -ItemType "file" -Value "#ifndef _$name`_h_ `n#define _$name`_h_ `nstruct $name{`n`n};`n#endif"
#         New-Item -Path . -Name "$name.c" -ItemType "file" -Value "#include `"$name.h`""
#     }
#     else {
#         if (Test-Path -Path .\include) {
#             New-Item -Path .\include -Name "$name.h" -ItemType "file" -Value "#ifndef _$name`_h_ `n#define _$name`_h_ `nstruct $name{`n`n};`n#endif"
#         }
#         if (Test-Path -Path .\src) {
#             New-Item -Path .\src -Name "$name.c" -ItemType "file" -Value "#include `"$name.h`"" 
#         }
#         else {
#             New-Item -Path . -Name "src" -ItemType "directory"
#             New-Item -Path . -Name "include" -ItemType "directory"
#             New-Item -Path .\include -Name "$name.h" -ItemType "file" -Value "#ifndef _$name`_h_ `n#define _$name`_h_ `nstruct $name{`n`n};`n#endif"
#             New-Item -Path .\src -Name "$name.c" -ItemType "file" -Value "#include `"$name.h`""
#         }
#     }
# }

Function createclasscpp {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)][string]$name,
        [switch]$nodir
    )
    
    if ($nodir) {
        New-Item -Path . -Name "$name.h" -ItemType "file" -Value "#ifndef _$name`_h_ `n#define _$name`_h_ `nclass $name{`n`n};`n#endif"
        New-Item -Path . -Name "$name.cpp" -ItemType "file" -Value "#include `"$name.h`""
    }
    else {
        if (Test-Path -Path .\include) {
            New-Item -Path .\include -Name "$name.h" -ItemType "file" -Value "#ifndef _$name`_h_ `n#define _$name`_h_ `nclass $name{`n`n};`n#endif"
        }
        if (Test-Path -Path .\src) {
            New-Item -Path .\src -Name "$name.cpp" -ItemType "file" -Value "#include `"$name.h`""
        }
        else {
            New-Item -Path . -Name "src" -ItemType "directory"
            New-Item -Path . -Name "include" -ItemType "directory"
            New-Item -Path .\include -Name "$name.h" -ItemType "file" -Value "#ifndef _$name`_h_ `n#define _$name`_h_ `nclass $name{`n`n};`n#endif"
            New-Item -Path .\src -Name "$name.cpp" -ItemType "file" -Value "#include `"$name.h`""
        }
    }
}
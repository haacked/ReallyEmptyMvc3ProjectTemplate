@echo off
cd %~dp0
cd ReallyEmptyMvcWebApplicationProjectTemplatev3.01.cshtml
REM create the project template zip
..\tools\7za.exe a -tzip -mx9 ..\ProjectTemplates\CSharp\Web\ReallyEmptyMvc3ProjectTemplate.zip *
pushd %~dp0
REM create the VSIX file based on the zip and manifest data
tools\7za.exe a -tzip -mx9 ReallyEmptyMvc3ProjectTemplate.vsix @vsixfiles.txt
REM delete the temporary zip
rmdir /s /q ProjectTemplates
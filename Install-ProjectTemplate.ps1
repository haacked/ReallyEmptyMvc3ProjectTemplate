param([switch]$uninstall)

$install = -not $uninstall

# Setting some values we'll need later.
$currentDir = split-path -parent $MyInvocation.MyCommand.Definition
$vsToolsDir = $Env:VS100COMNTOOLS
$vsProjTemplatePath = Join-Path $vsToolsDir ..\IDE\ProjectTemplates\CSharp\Web\1033\
$devenvPath = Join-Path $vsToolsDir ..\IDE\devenv.exe
$installTemplatesCommand = $devenvPath + " /installvstemplates"
$is64 = ($ENV:Processor_Architecture -eq 'x86' -and (test-path env:\PROCESSOR_ARCHITEW6432)) -or ($ENV:Processor_Architecture -eq 'AMD64')
$regDir = Join-Path $currentDir reg
$projName = 'ReallyEmptyMvcWebApplicationProjectTemplatev3.01.cshtml'
$templateDir = Join-Path $currentDir $projName
$zipFileName = $projName + '.zip'
$zipFile = Join-Path $templateDir $zipFileName
$templateZipFile = Join-Path $vsProjTemplatePath $zipFileName
$7zPath = Join-Path $currentDir \tools\7za.exe

$arch = 'x86'
if ($is64) {
	$arch = 'x64'
}

# Actual work.
if ($install) {
	& $7zPath a -tzip -mx9 $zipFile $templateDir/**
	Copy-Item $zipFile $vsProjTemplatePath
	Remove-Item $zipFile
	regedit.exe /S $regDir\install-$arch.reg
	& $devenvPath /installvstemplates
}
else {
	if (Test-Path $templateZipFile) {
		Remove-Item $templateZipFile
	}
	regedit.exe /S $regDir\uninstall-$arch.reg
	& $devenvPath /installvstemplates
}


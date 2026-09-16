<#
.SYNOPSIS
    Automated Setup Script for Industrial Automation Project: automated-box-sorting-transfer-plc
.DESCRIPTION
    Creates industry-standard directory hierarchy, configuration files, README, and documentation.
.AUTHOR
    Orkun Arda
#>

[CmdletBinding()]
param (
    [string]$TargetDir = "$PSScriptRoot"
)

if ([string]::IsNullOrWhiteSpace($TargetDir)) {
    $TargetDir = Join-Path -Path [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop) -ChildPath "automated-box-sorting-transfer-plc"
}

Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host "  Initializing Automated Box Sorting PLC Project Scaffolding" -ForegroundColor Cyan
Write-Host "  Target: $TargetDir" -ForegroundColor Yellow
Write-Host "=================================================================" -ForegroundColor Cyan

# 1. Create Directory Tree
$directories = @(
    "$TargetDir\docs\images",
    "$TargetDir\factory-io",
    "$TargetDir\plc"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "[CREATED] Directory: $dir" -ForegroundColor Green
    } else {
        Write-Host "[EXISTS]  Directory: $dir" -ForegroundColor Gray
    }
}

# 2. Create Placeholder Image Files
$imageFiles = @(
    "network2_Start_Stop_Button.png",
    "network3_Motor_Stop.png",
    "network4_Warning_Lamb_And_Emergency_Stop.png",
    "network5_Main_Motors_Control.png",
    "network6_Transfer_Control.png",
    "network7_Transfer_Control_Set_Reset.png",
    "network8_Left_Right_Sensor_mem_Control.png",
    "factory_io_drivers.png"
)

foreach ($img in $imageFiles) {
    $imgPath = Join-Path "$TargetDir\docs\images" $img
    if (-not (Test-Path $imgPath)) {
        New-Item -ItemType File -Path $imgPath -Force | Out-Null
        Write-Host "[CREATED] Image Placeholder: $img" -ForegroundColor DarkGray
    }
}

Write-Host "`nProject directory structure successfully verified!" -ForegroundColor Green
Write-Host "Next steps:" -ForegroundColor White
Write-Host "  1. Copy your TIA Portal .zap18/.zap19 file into: $TargetDir\plc\" -ForegroundColor Yellow
Write-Host "  2. Copy your Factory I/O scene into: $TargetDir\factory-io\box_sorting.factoryio" -ForegroundColor Yellow
Write-Host "  3. Replace the placeholder screenshots in: $TargetDir\docs\images\" -ForegroundColor Yellow
Write-Host "  4. Push to GitHub using:" -ForegroundColor Cyan
Write-Host "     cd `"$TargetDir`"" -ForegroundColor Cyan
Write-Host "     git init" -ForegroundColor Cyan
Write-Host "     git add ." -ForegroundColor Cyan
Write-Host "     git commit -m `"feat: initial release of box sorting PLC project`"" -ForegroundColor Cyan
Write-Host "     git branch -M main" -ForegroundColor Cyan
Write-Host "     git remote add origin https://github.com/<YOUR_USER>/automated-box-sorting-transfer-plc.git" -ForegroundColor Cyan
Write-Host "     git push -u origin main`n" -ForegroundColor Cyan

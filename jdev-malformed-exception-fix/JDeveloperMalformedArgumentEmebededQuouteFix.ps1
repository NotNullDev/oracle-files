$oracleHome = $env:oracle_home

# padding
Write-Output "`n"

if (!$oracleHome) {

    Write-Output "ORACLE_HOME NOT DEFINED."
    $oracleHome = Read-Host "Please provide path to oracle home (by default c:/oracle/middleware/oracle_home ) "
    $oracleHome = $oracleHome.Trim()

    if (Test-Path $oracleHome) {
        Write-Output "Using ORACLE_HOME=$oracleHome"
    } else {
        Write-Output "Provided path: $oracleHome does't exist. Please try again."
        return;
    }
}

$confFile = "$oracleHome/jdeveloper/ide/bin/ide.conf"
$confFileBk = "$confFile.bk"
if (!(Test-Path $confFile)) {
    Write-Output "Error: config file $confFile doesn't exist. Please verify ORACLE_HOME installation and try again."
    return;
}

try {
    
    Write-Output "Creating ide.conf backup ($confFileBk)"
    Copy-Item $confFile $confFileBk

    $fix = {

        #fix for double quotes https://stackoverflow.com/questions/60153079/jdeveloper-12c-integratedweblogicserver-error-while-building-the-default-dom
        AddVMOption  -Djdk.lang.Process.allowAmbiguousCommands=true

    }

    Add-Content -Value $fix -Path $confFile

    Write-Host -ForegroundColor Green  "`nSucess"

    $addedLines = Get-Content -Tail 3 $confFile

    Write-Host -ForegroundColor Green "`Added lines:`n"
    Write-Host -ForegroundColor Green "$addedLines `n"

    Write-Host -ForegroundColor Yellow "`Path to current config file: $confFile"

} catch {

    Write-Host -ForegroundColor Red "Exception occured. Details: "
    Write-Host -ForegroundColor Red $_

}
# padding
Write-Host "`n"
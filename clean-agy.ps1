<#
.SYNOPSIS
    Pulisce gli artefatti di build (.NET, Node, PHP/Laravel) e avvia agy.
.EXAMPLE
    .\clean-agy.ps1 "Rifattorizza il command handler per le fatture"
    .\clean-agy.ps1 --file src/Application/Invoices/Commands/CreateInvoiceCommand.cs "Aggiungi validazione"
#>

[CmdletBinding()]
param (
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$AgyArgs
)

Write-Host ">>> [1/2] Rimozione artefatti di build e cache..." -ForegroundColor Cyan

# Lista di directory da rimuovere
$dirsToPurge = @(
    "bin",
    "obj",
    "TestResults",
    ".vs",
    ".angular/cache",
    ".dart_tool",
    "storage/framework/cache/data",
    "storage/framework/views"
)

foreach ($dir in $dirsToPurge) {
    Get-ChildItem -Path . -Include $dir -Recurse -Directory -Force -ErrorAction SilentlyContinue | ForEach-Object {
        try {
            Remove-Item -Path $_.FullName -Recurse -Force -ErrorAction Stop
            Write-Host "  [-] Rimossa cartella: $($_.FullName.Replace($PWD.Path, ''))" -ForegroundColor DarkGray
        } catch {
            Write-Warning "  [!] Impossibile rimuovere $($_.FullName): $($_.Exception.Message)"
        }
    }
}

# Rimuovi file temporanei specifici (.suo, log, test result)
$filesToPurge = @("*.suo", "*.userosscache", "*.trx")
foreach ($pattern in $filesToPurge) {
    Get-ChildItem -Path . -Include $pattern -Recurse -File -Force -ErrorAction SilentlyContinue | ForEach-Object {
        Remove-Item -Path $_.FullName -Force -ErrorAction SilentlyContinue
    }
}

Write-Host ">>> [2/2] Avvio di Antigravity CLI (agy)..." -ForegroundColor Green

if ($AgyArgs.Count -gt 0) {
    & agy @AgyArgs
} else {
    & agy
}
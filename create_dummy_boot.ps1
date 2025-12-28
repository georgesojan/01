$bootDir = "src/Boot"
$files = @(
    "Windows/Release/BootSector.bin",
    "Windows/Release_AES/BootSector.bin",
    "Windows/Release_Serpent/BootSector.bin",
    "Windows/Release_Twofish/BootSector.bin",
    "Windows/Release_Camellia/BootSector.bin",
    "Windows/Release/Decompressor.com",
    "Windows/Release/BootLoader.com.gz",
    "Windows/Release_AES/BootLoader.com.gz",
    "Windows/Release_Serpent/BootLoader.com.gz",
    "Windows/Release_Twofish/BootLoader.com.gz",
    "Windows/Release_Camellia/BootLoader.com.gz",
    "Windows/Release_SHA2/BootSector.bin",
    "Windows/Release_AES_SHA2/BootSector.bin",
    "Windows/Release_Serpent_SHA2/BootSector.bin",
    "Windows/Release_Twofish_SHA2/BootSector.bin",
    "Windows/Release_Camellia_SHA2/BootSector.bin",
    "Windows/Release_SHA2/BootLoader.com.gz",
    "Windows/Release_AES_SHA2/BootLoader.com.gz",
    "Windows/Release_Serpent_SHA2/BootLoader.com.gz",
    "Windows/Release_Twofish_SHA2/BootLoader.com.gz",
    "Windows/Release_Camellia_SHA2/BootLoader.com.gz",
    "Windows/Rescue/BootSector.bin",
    "Windows/Rescue_AES/BootSector.bin",
    "Windows/Rescue_Serpent/BootSector.bin",
    "Windows/Rescue_Twofish/BootSector.bin",
    "Windows/Rescue_Camellia/BootSector.bin",
    "Windows/Rescue/BootLoader.com.gz",
    "Windows/Rescue_AES/BootLoader.com.gz",
    "Windows/Rescue_Serpent/BootLoader.com.gz",
    "Windows/Rescue_Twofish/BootLoader.com.gz",
    "Windows/Rescue_Camellia/BootLoader.com.gz",
    "Windows/Rescue_SHA2/BootSector.bin",
    "Windows/Rescue_AES_SHA2/BootSector.bin",
    "Windows/Rescue_Serpent_SHA2/BootSector.bin",
    "Windows/Rescue_Twofish_SHA2/BootSector.bin",
    "Windows/Rescue_Camellia_SHA2/BootSector.bin",
    "Windows/Rescue_SHA2/BootLoader.com.gz",
    "Windows/Rescue_AES_SHA2/BootLoader.com.gz",
    "Windows/Rescue_Serpent_SHA2/BootLoader.com.gz",
    "Windows/Rescue_Twofish_SHA2/BootLoader.com.gz",
    "Windows/Rescue_Camellia_SHA2/BootLoader.com.gz",
    "EFI/DcsBoot.efi",
    "EFI/DcsInt.efi",
    "EFI/DcsCfg.efi",
    "EFI/LegacySpeaker.efi",
    "EFI/DcsBml.efi",
    "EFI/DcsRe.efi",
    "EFI/DcsInfo.efi"
)

foreach ($file in $files) {
    $path = Join-Path $bootDir $file
    $parent = Split-Path $path
    if (-not (Test-Path $parent)) {
        New-Item -ItemType Directory -Path $parent -Force
    }
    if (-not (Test-Path $path)) {
        New-Item -ItemType File -Path $path -Force
        Write-Host "Created dummy: $file"
    }
}

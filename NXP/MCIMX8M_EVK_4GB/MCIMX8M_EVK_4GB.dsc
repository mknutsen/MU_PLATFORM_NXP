#
# NXP iMX8M Quad EVK board description
#
# The board is iMX8M with 4GB DRAM
#
#  Copyright (c) 2018, Microsoft Corporation. All rights reserved.
#  Copyright (c) 2013-2018, ARM Limited. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#


################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  DEFINE BOARD_NAME       = MCIMX8M_EVK_4GB

  PLATFORM_NAME           = iMX8
  PLATFORM_GUID           = F01954EE-8AC4-45BC-80E5-511EAE64C38C
  PLATFORM_VERSION        = 0.1
  DSC_SPECIFICATION       = 0x00010019
  OUTPUT_DIRECTORY        = Build/$(BOARD_NAME)
  SUPPORTED_ARCHITECTURES = AARCH64
  BUILD_TARGETS           = DEBUG|RELEASE
  SKUID_IDENTIFIER        = DEFAULT
  BOARD_DIR               = NXP/$(BOARD_NAME)
  FLASH_DEFINITION        = $(BOARD_DIR)/$(BOARD_NAME).fdf

# Include common peripherals
!include Silicon/ARM/NXP/iMX8Pkg/iMX8CommonDsc.inc

[LibraryClasses.common]

  IntrinsicLib|CryptoPkg/Library/IntrinsicLib/IntrinsicLib.inf
  DfciUiSupportLib|DfciPkg/Library/DfciUiSupportLibNull/DfciUiSupportLibNull.inf
  DfciRecoveryLib|DfciPkg/Library/DfciRecoveryLib/DfciRecoveryLib.inf
  OpensslLib|CryptoPkg/Library/OpensslLib/OpensslLib.inf
  DfciPasswordLib|DfciPkg/Library/DfciPasswordLib/DfciPasswordLib.inf
  BaseCryptLib|CryptoPkg/Library/BaseCryptLib/BaseCryptLib.inf
  DfciDeviceIdSupportLib|NXP/MCIMX8M_EVK_4GB/Library/DfciDeviceIdSupportLib/Imx8DeivceIdSupportLib.inf
  #MsPlatformDevicesLib|PcBdsPkg/Library/MsPlatformDevicesNullLib/MsPlatformDevicesNullLib.inf
  MsPlatformDevicesLib|NXP/MCIMX8M_EVK_4GB/Library/MsPlatformDevicesLib/MsPlatformDevicesLib.inf
  XmlTreeQueryLib|XmlSupportPkg/Library/XmlTreeQueryLib/XmlTreeQueryLib.inf
  XmlTreeLib|XmlSupportPkg/Library/XmlTreeLib/XmlTreeLib.inf
  DfciV1SupportLib|DfciPkg/Library/DfciV1SupportLibNull/DfciV1SupportLibNull.inf
  #
  # Library instance that understands the MsXml Settings Schema and providers helper functions
  #
  DfciXmlSettingSchemaSupportLib|DfciPkg/Library/DfciXmlSettingSchemaSupportLib/DfciXmlSettingSchemaSupportLib.inf

  #
  # Library instance that understands the MsXml Permission Schema and providers helper functions
  #
  DfciXmlPermissionSchemaSupportLib|DfciPkg/Library/DfciXmlPermissionSchemaSupportLib/DfciXmlPermissionSchemaSupportLib.inf

  #
  # Library instance that understands the MsXml Device Id Schema and providers helper functions
  #
  DfciXmlDeviceIdSchemaSupportLib|DfciPkg/Library/DfciXmlDeviceIdSchemaSupportLib/DfciXmlDeviceIdSchemaSupportLib.inf

  #
  # Library instance that understands the MsXml Device Id Schema and providers helper functions
  #
  DfciXmlIdentitySchemaSupportLib|DfciPkg/Library/DfciXmlIdentitySchemaSupportLib/DfciXmlIdentitySchemaSupportLib.inf

  #
  # Library instance that understands Zero Touch
  #
  ZeroTouchSettingsLib|ZeroTouchPkg/Library/ZeroTouchSettings/ZeroTouchSettings.inf

  MsUiThemeCopyLib|MsGraphicsPkg/Library/MsUiThemeCopyLib/MsUiThemeCopyLib.inf
  MsUefiVersionLib|OemPkg/Library/MsUefiVersionLib/MsUefiVersionLib.inf
  ThermalServicesLib|PcBdsPkg/Library/ThermalServicesLibNull/ThermalServicesLibNull.inf
  PowerServicesLib|PcBdsPkg/Library/PowerServicesLibNull/PowerServicesLibNull.inf
  MsPlatformPowerCheckLib|PcBdsPkg/Library/MsPlatformPowerCheckNullLib/MsPlatformPowerCheckNullLib.inf
  PlatformThemeLib|MsGraphicsPkg/Library/SamplePlatformThemeLib/PlatformThemeLib.inf
  ConsoleMsgLib|PcBdsPkg/Library/ConsoleMsgNullLib/ConsoleMsgNullLib.inf
  GraphicsConsoleHelperLib|PcBdsPkg/Library/GraphicsConsoleHelperLib/GraphicsConsoleHelper.inf
  DeviceStateLib|MsCorePkg/Library/DeviceStateLib/DeviceStateLib.inf
  #DeviceBootManagerLib|iMXPlatformPkg/Library/DeviceBootManagerLib/DeviceBootManagerLib.inf
  DeviceBootManagerLib|PcBdsPkg/Library/DeviceBootManagerLib/DeviceBootManagerLib.inf
  UiRectangleLib|MsGraphicsPkg/Library/BaseUiRectangleLib/BaseUiRectangleLib.inf
  DisplayDeviceStateLib|MsGraphicsPkg/Library/ColorBarDisplayDeviceStateLib/ColorBarDisplayDeviceStateLib.inf
  MsAltBootLib|OemPkg/Library/MsAltBootLib/MsAltBootLib.inf
  HwResetSystemLib|ArmPkg/Library/ArmSmcPsciResetSystemLib/ArmSmcPsciResetSystemLib.inf
  MsBootOptionsLib|PcBdsPkg/Library/MsBootOptionsLib/MsBootOptionsLib.inf
  MsColorTableLib|MsGraphicsPkg/Library/MsColorTableLib/MsColorTableLib.inf
  MsNetworkDependencyLib|PcBdsPkg/Library/MsNetworkDependencyLib/MsNetworkDependencyLib.inf
  MsNVBootReasonLib|OemPkg/Library/MsNVBootReasonLib/MsNVBootReasonLib.inf
  MathLib|MsCorePkg/Library/MathLib/MathLib.inf
  BootGraphicsLib|MsGraphicsPkg/Library/BootGraphicsLib/BootGraphicsLib.inf
  MsBootManagerSettingsLib|PcBdsPkg/Library/MsBootManagerSettingsDxeLib/MsBootManagerSettingsDxeLib.inf
  SwmDialogsLib|MsGraphicsPkg/Library/SwmDialogsLib/SwmDialogs.inf
  BootGraphicsProviderLib|OemPkg/Library/BootGraphicsProviderLib/BootGraphicsProviderLib.inf
  MsBootPolicyLib|OemPkg/Library/MsBootPolicyLib/MsBootPolicyLib.inf
  BmpSupportLib|MdeModulePkg/Library/BaseBmpSupportLib/BaseBmpSupportLib.inf
  MsUiThemeLib|MsGraphicsPkg/Library/MsUiThemeLib/Dxe/MsUiThemeLib.inf
  SafeIntLib|MdePkg/Library/BaseSafeIntLib/BaseSafeIntLib.inf
  UIToolKitLib|MsGraphicsPkg/Library/SimpleUIToolKit/SimpleUIToolKit.inf
  #HwResetSystemLib|MdeModulePkg/Library/BaseResetSystemLibNull/BaseResetSystemLibNull.inf     ## MS_CHANGE
  ResetUtilityLib|MdeModulePkg/Library/ResetUtilityLib/ResetUtilityLib.inf
  BaseBinSecurityLib|MdePkg/Library/BaseBinSecurityLibNull/BaseBinSecurityLibNull.inf
  SecurityLockAuditLib|MdeModulePkg/Library/SecurityLockAuditLibNull/SecurityLockAuditLibNull.inf
#  Performance2Lib|MdePkg/Library/BasePerformance2LibNull/BasePerformance2LibNull.inf

  ArmLib|ArmPkg/Library/ArmLib/ArmBaseLib.inf
  ArmMmuLib|ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib.inf
  ArmPlatformLib|NXP/MCIMX8M_EVK_4GB/Library/iMX8BoardLib/iMX8BoardLib.inf
  ArmSmcLib|ArmPkg/Library/ArmSmcLib/ArmSmcLib.inf
  RealTimeClockLib|iMXPlatformPkg/Library/VirtualRealTimeClockLib/VirtualRealTimeClockLib.inf

  CapsuleLib|MdeModulePkg/Library/DxeCapsuleLibNull/DxeCapsuleLibNull.inf
#  CustomizedDisplayLib|MdeModulePkg/Library/CustomizedDisplayLib/CustomizedDisplayLib.inf

  # USB Requirements
  UefiUsbLib|MdePkg/Library/UefiUsbLib/UefiUsbLib.inf

!ifndef CONFIG_HEADLESS
  LcdHwLib|ArmPlatformPkg/Library/LcdHwNullLib/LcdHwNullLib.inf
  LcdPlatformLib|iMX8Pkg/Library/HdLcdiMX8Lib/HdLcdiMX8Lib.inf
!endif

[LibraryClasses.common.SEC]
  PrePiLib|EmbeddedPkg/Library/PrePiLib/PrePiLib.inf
  ExtractGuidedSectionLib|EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib.inf
  LzmaDecompressLib|MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib.inf
  MemoryAllocationLib|EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib.inf
  HobLib|EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib.inf
  PrePiHobListPointerLib|ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib.inf
  PerformanceLib|MdeModulePkg/Library/PeiPerformanceLib/PeiPerformanceLib.inf
  PlatformPeiLib|ArmPlatformPkg/PlatformPei/PlatformPeiLib.inf

[LibraryClasses.common.SEC, LibraryClasses.common.PEIM]
  MemoryInitPeiLib|ArmPlatformPkg/MemoryInitPei/MemoryInitPeiLib.inf

[LibraryClasses.common.UEFI_DRIVER, LibraryClasses.common.UEFI_APPLICATION, LibraryClasses.common.DXE_RUNTIME_DRIVER, LibraryClasses.common.DXE_DRIVER]
  PcdLib|MdePkg/Library/DxePcdLib/DxePcdLib.inf
  NonDiscoverableDeviceRegistrationLib|MdeModulePkg/Library/NonDiscoverableDeviceRegistrationLib/NonDiscoverableDeviceRegistrationLib.inf
  ResetSystemLib|MdeModulePkg/Library/DxeResetSystemLib/DxeResetSystemLib.inf

[BuildOptions]
  GCC:*_*_ARM_PLATFORM_FLAGS = -march=armv8-a -fno-inline -fno-inline-smallfunctions -fno-inline-functions-called-once

################################################################################
#
# Pcd Section - list of all EDK II PCD Entries defined by this Platform
#
################################################################################

[PcdsFeatureFlag.common]
  ## If TRUE, Graphics Output Protocol will be installed on virtual handle created by ConsplitterDxe.
  #  It could be set FALSE to save size.
  gEfiMdeModulePkgTokenSpaceGuid.PcdConOutGopSupport|TRUE

  gEfiMdeModulePkgTokenSpaceGuid.PcdTurnOffUsbLegacySupport|TRUE

[PcdsFixedAtBuild.common]
  gMsGraphicsPkgTokenSpaceGuid.PcdUiThemeInDxe|TRUE
  gEfiMdeModulePkgTokenSpaceGuid.PcdBootManagerInBootOrder|TRUE
  gEfiMdeModulePkgTokenSpaceGuid.PcdPlatformRecoverySupported|FALSE
  gEfiMdeModulePkgTokenSpaceGuid.PcdBootManagerMenuFile|{ 0x8A, 0x70, 0x42, 0x40, 0x2D, 0x0F, 0x23, 0x48, 0xAC, 0x60, 0x0D, 0x77, 0xB3, 0x11, 0x18, 0x89 }

  gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0x2F
  gEfiMdePkgTokenSpaceGuid.PcdReportStatusCodePropertyMask|0x7
  gEfiMdePkgTokenSpaceGuid.PcdFixedDebugPrintErrorLevel|0x80080246

  # FirmwareRevision 0.1
  gEfiMdeModulePkgTokenSpaceGuid.PcdFirmwareRevision|0x00000001

  #
  # NV Storage PCDs. Use base of 0x30370000 for SNVS?
  #
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageVariableBase|0x30370000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageVariableSize|0x00004000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwWorkingBase|0x30374000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwWorkingSize|0x00004000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwSpareBase|0x30378000
  gEfiMdeModulePkgTokenSpaceGuid.PcdFlashNvStorageFtwSpareSize|0x00004000

  # i.MX8M Quad
  gArmPlatformTokenSpaceGuid.PcdCoreCount|4
  gArmPlatformTokenSpaceGuid.PcdClusterCount|1

  gArmTokenSpaceGuid.PcdVFPEnabled|1

  #
  # iMXPlatformPkg
  #

  ## iMXPlatformPackage - Serial Terminal
  giMXPlatformTokenSpaceGuid.PcdSerialRegisterBase|0x30860000

  # uSDHCx | iMX8M EVK Connections
  #-------------------------------------
  # uSDHC1 | eMMC
  # uSDHC2 | SD Card slot
  # uSDHC3 | N/A
  # uSDHC4 | N/A
  #
  giMXPlatformTokenSpaceGuid.PcdSdhc1Enable|TRUE
  giMXPlatformTokenSpaceGuid.PcdSdhc2Enable|TRUE
  giMXPlatformTokenSpaceGuid.PcdSdhc3Enable|FALSE
  giMXPlatformTokenSpaceGuid.PcdSdhc4Enable|FALSE

  giMXPlatformTokenSpaceGuid.PcdSdhc1CardDetectSignal|0xFF00
  giMXPlatformTokenSpaceGuid.PcdSdhc1WriteProtectSignal|0xFF01
  giMXPlatformTokenSpaceGuid.PcdSdhc2CardDetectSignal|0xFF00
  giMXPlatformTokenSpaceGuid.PcdSdhc2WriteProtectSignal|0xFF01
  giMXPlatformTokenSpaceGuid.PcdSdhc3CardDetectSignal|0xFF00
  giMXPlatformTokenSpaceGuid.PcdSdhc3WriteProtectSignal|0xFF01
  giMXPlatformTokenSpaceGuid.PcdSdhc4CardDetectSignal|0xFF00
  giMXPlatformTokenSpaceGuid.PcdSdhc4WriteProtectSignal|0xFF01

  ## SBSA Watchdog Count
!ifndef DISABLE_SBSA_WATCHDOG
  gArmPlatformTokenSpaceGuid.PcdWatchdogCount|2
!endif

  #
  # ARM Generic Interrupt Controller
  #
  gArmTokenSpaceGuid.PcdGicDistributorBase|0x38800000
  gArmTokenSpaceGuid.PcdGicRedistributorsBase|0x38880000

!if TRUE == FALSE
  #
  # Watchdog
  #
  gArmTokenSpaceGuid.PcdGenericWatchdogControlBase|0x30280000
#  gArmTokenSpaceGuid.PcdGenericWatchdogRefreshBase| *** unused ***
  gArmTokenSpaceGuid.PcdGenericWatchdogEl2IntrNum|110
!endif

  # List of Device Paths that support BootMonFs
  gArmBootMonFsTokenSpaceGuid.PcdBootMonFsSupportedDevicePaths|L"VenHw(E7223039-5836-41E1-B542-D7EC736C5E59)"

  #
  # ARM Architectural Timer Frequency
  #
  gEmbeddedTokenSpaceGuid.PcdMetronomeTickPeriod|1000

  gEfiMdeModulePkgTokenSpaceGuid.PcdResetOnMemoryTypeInformationChange|FALSE

  #
  # SMBIOS entry point version
  #
  gEfiMdeModulePkgTokenSpaceGuid.PcdSmbiosVersion|0x0300
  gEfiMdeModulePkgTokenSpaceGuid.PcdSmbiosDocRev|0x0

[PcdsPatchableInModule]
  # Use system default resolution
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoHorizontalResolution|0
  gEfiMdeModulePkgTokenSpaceGuid.PcdVideoVerticalResolution|0

################################################################################
#
# Components Section - list of all EDK II Modules needed by this Platform
#
################################################################################
[Components.AARCH64]
  #
  # PEI Phase modules
  #
  ArmPlatformPkg/PrePi/PeiUniCore.inf

  #
  # DXE
  #
  MdeModulePkg/Core/Dxe/DxeMain.inf {
    <LibraryClasses>
      PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
      NULL|MdeModulePkg/Library/DxeCrc32GuidedSectionExtractLib/DxeCrc32GuidedSectionExtractLib.inf
  }
  MsGraphicsPkg/DisplayEngineDxe/DisplayEngineDxe.inf
  #
  # Architectural Protocols
  #
  ArmPkg/Drivers/CpuDxe/CpuDxe.inf
  MdeModulePkg/Core/RuntimeDxe/RuntimeDxe.inf
  MdeModulePkg/Universal/SecurityStubDxe/SecurityStubDxe.inf
  MdeModulePkg/Universal/CapsuleRuntimeDxe/CapsuleRuntimeDxe.inf
  MdeModulePkg/Universal/MonotonicCounterRuntimeDxe/MonotonicCounterRuntimeDxe.inf
  MdeModulePkg/Universal/ResetSystemRuntimeDxe/ResetSystemRuntimeDxe.inf
  EmbeddedPkg/RealTimeClockRuntimeDxe/RealTimeClockRuntimeDxe.inf
  EmbeddedPkg/MetronomeDxe/MetronomeDxe.inf

  MdeModulePkg/Universal/Console/ConPlatformDxe/ConPlatformDxe.inf
  MdeModulePkg/Universal/Console/ConSplitterDxe/ConSplitterDxe.inf
  MdeModulePkg/Universal/Console/GraphicsConsoleDxe/GraphicsConsoleDxe.inf
  MdeModulePkg/Universal/Console/TerminalDxe/TerminalDxe.inf
  MdeModulePkg/Universal/SerialDxe/SerialDxe.inf

  #MdeModulePkg/Universal/Variable/RuntimeDxe/VariableRuntimeDxe.inf
  MdeModulePkg/Universal/Variable/EmuRuntimeDxe/EmuVariableRuntimeDxe.inf
  MdeModulePkg/Universal/FaultTolerantWriteDxe/FaultTolerantWriteDxe.inf

  #
  # ACPI Support
  #
  MdeModulePkg/Universal/Acpi/AcpiTableDxe/AcpiTableDxe.inf
  MdeModulePkg/Universal/Acpi/AcpiPlatformDxe/AcpiPlatformDxe.inf
  $(BOARD_DIR)/AcpiTables/AcpiTables.inf

  MdeModulePkg/Universal/HiiDatabaseDxe/HiiDatabaseDxe.inf

  ArmPkg/Drivers/ArmGic/ArmGicDxe.inf
  ArmPkg/Drivers/TimerDxe/TimerDxe.inf
# disable - doesn't seem to be powered on
#  ArmPkg/Drivers/GenericWatchdogDxe/GenericWatchdogDxe.inf
  MdeModulePkg/Universal/WatchdogTimerDxe/WatchdogTimer.inf

  #
  # FAT filesystem + GPT/MBR partitioning
  #
  FatBinPkg/EnhancedFatDxe/Fat.inf
  MdeModulePkg/Universal/Disk/DiskIoDxe/DiskIoDxe.inf
  MdeModulePkg/Universal/Disk/PartitionDxe/PartitionDxe.inf
  Microsoft/Drivers/SdMmcDxe/SdMmcDxe.inf
  iMXPlatformPkg/Drivers/SdhcDxe/SdhcDxe.inf

  # Unicode support (required)
  MdeModulePkg/Universal/Disk/UnicodeCollation/EnglishDxe/EnglishDxe.inf

  #
  # iMX8 platform driver
  #
  iMX8Pkg/Drivers/iMX8Dxe/iMX8Dxe.inf

  #
  # GOP driver
  #
!ifndef CONFIG_HEADLESS
  ArmPlatformPkg/Drivers/LcdGraphicsOutputDxe/LcdGraphicsOutputDxe.inf
!endif

  #
  # SMBIOS/DMI
  #
  MdeModulePkg/Universal/SmbiosDxe/SmbiosDxe.inf
  NXP/MCIMX8M_EVK_4GB/Drivers/SmbiosPlatformDxe/SmbiosPlatformDxe.inf
  MsGraphicsPkg/MsUiTheme/Dxe/MsUiThemeProtocol.inf
  #
  # Bds
  #
  MdeModulePkg/Universal/DevicePathDxe/DevicePathDxe.inf
 # MdeModulePkg/Universal/DisplayEngineDxe/DisplayEngineDxe.inf WRONG ONE
  MdeModulePkg/Universal/SetupBrowserDxe/SetupBrowserDxe.inf
  MdeModulePkg/Universal/BdsDxe/BdsDxe.inf {
    <LibraryClasses>
      #DeviceBootManagerLib|PcBdsPkg/Library/DeviceBootManagerMsUiThemeCopyLibLib/DeviceBootManagerLib.inf
      PlatformBootManagerLib|MsCorePkg/Library/PlatformBootManagerLib/PlatformBootManagerLib.inf
      PlatformHookLib|MdeModulePkg/Library/BasePlatformHookLibNull/BasePlatformHookLibNull.inf
    <PcdsFixedAtBuild>
      gPcBdsPkgTokenSpaceGuid.PcdBdsBootPolicy|TRUE
  }
 # MdeModulePkg/Application/UiApp/UiApp.inf {
 #   <LibraryClasses>
 #     NULL|MdeModulePkg/Library/DeviceManagerUiLib/DeviceManagerUiLib.inf
 #     NULL|MdeModulePkg/Library/BootManagerUiLib/BootManagerUiLib.inf
 #     NULL|MdeModulePkg/Library/BootMaintenanceManagerUiLib/BootMaintenanceManagerUiLib.inf
 # }

#[Components.AARCH64]
  #
  # EBC
  #
  MdeModulePkg/Universal/EbcDxe/EbcDxe.inf
 # MsGraphicsPkg/MsUiTheme/Pei/MsUiThemePpi.inf
  # Surface FrontPage application.
  OemPkg/FrontPage/FrontPage.inf

  # Surface Boot Manager (Menu) application
  OemPkg/BootMenu/BootMenu.inf

  PcBdsPkg/MsBootPolicy/MsBootPolicy.inf

  MdeModulePkg/Universal/BootManagerPolicyDxe/BootManagerPolicyDxe.inf
  #
  # Remote/IT/Admin Settings
  #
  MdeModulePkg/Universal/RegularExpressionDxe/RegularExpressionDxe.inf
  DfciPkg/SettingsManager/SettingsManagerDxe.inf {
        #Platform should add all it settings libs here
  <LibraryClasses>
        NULL|ZeroTouchPkg/Library/ZeroTouchSettings/ZeroTouchSettings.inf
        NULL|DfciPkg/Library/DfciSettingsLib/DfciSettingsLib.inf
        DfciSettingPermissionLib|DfciPkg/Library/DfciSettingPermissionLib/DfciSettingPermissionLib.inf
  <PcdsFeatureFlag>
     gDfciPkgTokenSpaceGuid.PcdSettingsManagerInstallProvider|TRUE
  }

  DfciPkg/IdentityAndAuthManager/IdentityAndAuthManagerDxe.inf
  DfciPkg/DfciManager/DfciManager.inf
  MdeModulePkg/Universal/Variable/VarLockNullDxe/VarLockNullDxe.inf
  MsGraphicsPkg/SimpleWindowManagerDxe/SimpleWindowManagerDxe.inf
  MsGraphicsPkg/RenderingEngineDxe/RenderingEngineDxe.inf
  MsGraphicsPkg/GopOverrideDxe/GopOverrideDxe.inf
  MsGraphicsPkg/OnScreenKeyboardDxe/OnScreenKeyboardDxe.inf


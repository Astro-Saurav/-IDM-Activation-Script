# IDM Activation Script
An open-source tool to activate and reset the trial of [Internet Download Manager](https://www.internetdownloadmanager.com/)

# Features
* IDM freeze trial and activation with registry key lock method
* Activation and trial persist even after installing IDM updates
* IDM trial reset
* Fully open source
* Based on the transparent batch script

# Download / How to use it?
First fresh install [Internet Download Manager](https://www.internetdownloadmanager.com/). Make sure previous cracks/patches are removed/uninstalled if there are any.
After that follow the below steps to activate it.


# Method 1 - PowerShell
(Recommended)

* Right-click on the Windows start menu and select PowerShell or Terminal (Not CMD).
* Copy-paste the below code and press enter
*`irm "https://bit.ly/idm_Activate" | iex`  or
*`irm "https://raw.githubusercontent.com/Astro-Saurav/IDM-Activation-Script/main/IAS.ps1" | iex`
* You will see the activation options, follow the on-screen instructions.
* That’s all.


# Screenshots
![https://github.com/lstprjct/IDM-Activation-Script/assets/88411318/fafdb481-c497-464f-b1e6-9a4254eaf880](https://github.com/Astro-Saurav/IDM-Activation-Script/blob/72eae3aa664bb6dd446008dd448fe632f3e7a641/Screenshort/1.png)

![https://github.com/lstprjct/IDM-Activation-Script/assets/88411318/76b36582-8cf4-4d1e-870f-6e8e57c80a87](https://github.com/Astro-Saurav/IDM-Activation-Script/blob/72eae3aa664bb6dd446008dd448fe632f3e7a641/Screenshort/2.png)

# Info
## Freeze Trial
* IDM provides a 30-day trial period, you can use this option in the script to lock this trial period for the lifetime so that you won’t have to reset the trial again and your trial won’t expire.
* This method requires the Internet at the time of applying this option.
* IDM updates can be installed directly without having to freeze it again.

## Activation

* This script applies the registry lock method to activate the Internet download manager (IDM).
* This method requires the Internet at the time of activation.
* IDM updates can be installed directly without having to activate it again.
* After the activation, if in some cases, IDM starts to show an activation nag screen, then just run the activation option again without using the reset option.

## Reset IDM Activation / Trial
* Internet download manager provides a 30-day trial period, you can use this script to reset this Activation / Trial period whenever you want.
* This option also can be used to restore status if in case IDM reports a fake serial key and other similar errors.

## OS requirement
* The project is supported for Windows 7/8/8.1/10/11 and their Server equivalent.
* The PowerShell method to run IAS is supported on Windows 8 and higher.

## Advanced Info
* To activate in unattended mode, run the script with the /act parameter.
* To freeze the trial in unattended mode, run the script with the /frz parameter.
* To reset in unattended mode, run the script with the /res parameter.

# How does it work?
* IDM stores the data related to trial and activation across various registry keys. Some of these keys are locked to protect them from tampering and data is stored in a pattern to track the fake serial issue and the remaining trial days. To activate it, the script here simply generates those registry keys by triggering a few downloads in IDM, identifies those registry keys, and locks them so IDM can’t edit and view them. That way IDM cannot show the warning that it’s activated with a fake serial key.

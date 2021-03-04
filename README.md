# android-tools

## What is this?

This project is aimed at providing popular Android tools (e.g. aapt, aapt2, etc.) that can be run directly on Android devices.  Although these tools are already packaged in the [Android SDK](https://developer.android.com/studio), the SDK only provides them for ABIs targetting the PC (e.g. x86 or x86_64).

For a complete list of the Android tools provided by this project, please see the [build folder](https://github.com/jonforshort/android-tools/tree/master/build/android-9.0.0_r33).

## Why is this useful?

I created this project because I needed to analyze APKs on the device as part of my Android app.  Although there are already projects out there that allow you to do this off-device -- most notably [apk tool](https://ibotpeaches.github.io/Apktool/), there isn't a project (as far as I know) that allows you to do this directly on-device.

## How was this done?

The work for this project is straightforward.  A lot of these tools are already being built as part of the Android Open Source Project (AOSP) source code.  The work is to simply modify the build scripts for each of the desired tools to build for the desired architectures.

For more information on how to build the AOSP project, please see the official [Android Build Documentation.](https://source.android.com/setup/build/requirements)

## Will you be providing patches for the modified build scripts?

Yes, please see the top-level directory "patch".  The structure of this directory (as well as the build directory) is as follows.

patch/<branch_name>/<path_to_patched_file>

## How can I help?

The best way to help is to find an Android tool you think is valuable to include in this project, and then submit a build script patch for it.  Here is a list of tools that is currently on my to-do list.

* apkanalyzer (https://developer.android.com/studio/command-line/apkanalyzer)
* apksigner (https://developer.android.com/studio/command-line/apksigner)

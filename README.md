# android-tools

## What is this?

This project is aimed at providing popular Android tools (e.g. aapt) that can be run directly on Android devices.  These tools are already packaged in the Android SDK (https://developer.android.com/studio), but for ABIs that are unuseable on most Android devices (e.g. x86 or x86_64).

Currently, this project only provides the Android Asset Packaging Tool (AAPT) for ARM-v7a, ARM-v8a, X86 and X86-64 ABIs.  The plan is to provide other useful tools such as AAPT2 and dexdump.

## Why is this useful?

I am currently writing an Android app that requires me to analyze an app's APK on the device.  Although there are already projects out there that allow you to do this off-device -- most notably apk tool (https://ibotpeaches.github.io/Apktool/), there isn't a project (as far as I know) that allows you to do this directly on-device.

## How was this done?

The work for this project is straightforward.  A lot of these tools are already being built as part of the Android Open Source Project (AOSP) source code.  The work is to simply modify the build scripts for each of the desired tools to build for the desired architectures.

For more information on how to build the AOSP project, please see the following page: https://source.android.com/setup/build/requirements.

## Will you be providing patches for the modified build scripts?

Yes, please see the top-level directory "patch".  The structure of this directory (as well as the build directory) is as follows.

patch/<branch_name>/<path_to_patched_file>

## How can I help?

The best way to help is to submit patches for the build scripts.

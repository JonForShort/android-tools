# android-tools

## What is this?

This project is aimed at providing popular Android tools (e.g. aapt) that can be run directly on Android devices.  These tools are already packaged in the Android SDK (https://developer.android.com/studio), but for ABIs that unuseable on most Android devices such as x86 or x86_64 architectures.

Note that this project is still a work-in-progress. Currently, it only provides the Android Asset Packaging Tool (AAPT) for ARM-v7a, ARM-v8a, X86 and X86-64 ABIs. 

## Why is this useful?

I am currently writing an Android app that requires me to analyze APKs on the device.  Although there are already projects out there that allow you to do this off-device -- most notably apk tool (https://ibotpeaches.github.io/Apktool/), there isn't a project that allows you to do this on-device.  This project aims to fill this void. 

## How was this done?

The builds were performed directly on the Android Open Source Project (AOSP) source code.  For information on this, please see the following page: https://source.android.com/setup/build/requirements.  The general idea was that I modified the build scripts for the tools branch (https://android.googlesource.com/platform/frameworks/base/+/refs/heads/master/tools/) to build for the target architecture (e.g. ARM-v7a, ARM-v8a, etc.) instead of the host architecture (e.g. x86-64).  There were some other minor modifications required to run properly.  These can be seen in the patches which is located in the top-level of this project under the "patch" directory.

## Will you be providing patches for the modified build files?

Yes, please see the top-level directory "patch".  The structure of this directory (as well as the build directory) is as follows.

patch/<branch_name>/<path_to_patched_file>

## How can I help?

The best way to help is to submit patches for the build scripts.

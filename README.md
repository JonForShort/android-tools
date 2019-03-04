# android-tools

## What is this?

This project is aimed at providing popular Android tools (e.g. aapt) that can be run directly on Android devices.  These tools are already packaged in the Android SDK (https://developer.android.com/studio) but for ABIs unuseable on most Android devices (e.g. x86 and x86_64).  Note that this project is still a work-in-progress. Currently, it only provides the Android Asset Packaging Tool (AAPT) for ARM-v7a, ARM-v8a, X86 and X86-64 ABIs. 

## Why is this useful?

Have you ever needed to run AAPT as part of your Android app? Well I have :)  This motivated me to create this project.  I was writing an app that needed to analyze and modify existing packages on the device.  

## How was this done?

The builds were performed directly on the Android Open Source Project (AOSP) source code.  For information on this, please see the following page: https://source.android.com/setup/build/requirements.  The general idea was that I modified the build scripts for the tools branch (https://android.googlesource.com/platform/frameworks/base/+/refs/heads/master/tools/) to build for the target architecture (e.g. ARM-v7a, ARM-v8a, etc.) instead of the host architecture (e.g. x86-64).  There were some other minor modifications required to run properly.  These can be seen in the patches (coming soon).

## Will you be providing patches for the modified build files?

Yup, this is coming soon.

## How can I help?

The best way to help is to submit patches for the build scripts.  Please be sure to include the branch that you used. 

#!/bin/bash

# Device
export DT_LINK="https://github.com/PitchBlackRecoveryProject/android_device_xiaomi_ginkgo-pbrp.git -b android-12.1"
export PBRP_MANIFEST="https://github.com/PitchBlackRecoveryProject/manifest_pb"
export PBRP_BRANCH="android-12.1"
export DEVICE="ginkgo"
export OEM="xiaomi"
export TARGET="recoveryimage"
export OUTPUT="recovery.img"

# Extra Command
#export EXTRA_CMD="git clone https://github.com/OrangeFoxRecovery/Avatar.git misc"

# Not Recommended to Change
if [ ! -e $HOME/work ]; then
mkdir $HOME/work
fi

export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

#if [ ! -z "$PLATFORM" ]; then
#    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
#else
#   export KERNEL_PATH="kernel/$OEM/$DEVICE"
#fi
export DT_PATH="device/$OEM/$DEVICE"

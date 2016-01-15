#!/bin/sh

cd ~/RRCAF
cd ~/RRCAF && . patcher/unpatcher.sh
cd ~/RRCAF && repo sync --force-sync
cd ~/RRCAF/frameworks/base && git fetch https://github.com/amardeep434/android_frameworks_base-1 marshmallow && git cherry-pick c16b5fd948a51d6fb6133ba6ef7cd23abe7c2b7f
cd ~/RRCAF/vendor/cm && git fetch https://github.com/amardeep434/android_vendor_resurrection marshmallow && git cherry-pick  a85aeb85df5fcc4ea159af77631756a28ffec55a
cd ~/RRCAF/vendor/qcom/opensource && sudo rm -r dataservices
cd ~/RRCAF && make clean && . build/envsetup.sh && brunch bacon

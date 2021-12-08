#!/sbin/sh

#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Setup shell variables
current_booted_slot=$(getprop ro.boot.slot_suffix)
mount_command="mount -o rw /dev/block/bootdevice/by-name/system$current_booted_slot /mnt/system; mount -o rw /dev/block/bootdevice/by-name/system$current_booted_slot /system_root/system"
unmount_command="umount /mnt/system; umount /system_root/system"

# Mount system as R/W
eval $unmount_command
eval $mount_command

# Remove duplicated labels
sed -i "/ro.product.system.name         u:object_r:build_prop:s0 exact string/d" /mnt/system/etc/selinux/plat_property_contexts
sed -i "/ro.product.system.name         u:object_r:build_prop:s0 exact string/d" /system_root/system/etc/selinux/plat_property_contexts

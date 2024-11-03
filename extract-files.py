#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/nubia/nx669j',
    'hardware/qcom-caf/sm8350',
    'hardware/qcom-caf/wlan',
    'vendor/qcom/opensource/commonsys/display',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/dataservices',
    'vendor/qcom/opensource/display',
]

blob_fixups: blob_fixups_user_type = {
    'vendor/lib64/hw/fingerprint.lahaina.so': blob_fixup()
        .fix_soname(),
    'vendor/etc/msm_irqbalance.conf': blob_fixup()
        .regex_replace('IGNORED_IRQ=27,23,38$', 'IGNORED_IRQ=27,23,38,115,332'),
}  # fmt: skip

module = ExtractUtilsModule(
    'nx669j',
    'nubia',
    namespace_imports=namespace_imports,
    blob_fixups=blob_fixups,
    add_firmware_proprietary_file=True,
    check_elf=False,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()

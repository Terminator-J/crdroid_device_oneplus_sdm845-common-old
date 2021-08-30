/*
 * Copyright (C) 2021 crDroid Android Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "AntiFlickerService"

#include <android-base/file.h>
#include <android-base/logging.h>
#include <android-base/strings.h>
#include <fstream>

#include "AntiFlicker.h"

namespace vendor {
namespace lineage {
namespace livedisplay {
namespace V2_0 {
namespace implementation {

static constexpr const char* kDcDimmingPath =
    "/sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/dimlayer_bl_en";

static constexpr const char* kDitherPath =
    "/sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/dither_en";

Return<bool> AntiFlicker::isEnabled() {
    std::ifstream file(kDcDimmingPath);
    int result = -1;
    file >> result;
    LOG(DEBUG) << "Got result " << result << " fail " << file.fail();
    return !file.fail() && result > 0;
}

Return<bool> AntiFlicker::showWarning() {
    return false;
}

Return<bool> AntiFlicker::setEnabled(bool enabled) {
    std::ofstream file1(kDcDimmingPath);
    file1 << (enabled ? "1" : "0");
    LOG(DEBUG) << "setEnabled fail " << file1.fail();

    std::ofstream file2(kDitherPath);
    file2 << (enabled ? "1" : "0");
    LOG(DEBUG) << "setEnabled fail " << file2.fail();
    return !file1.fail() == !file2.fail();
}

}  // namespace implementation
}  // namespace V2_0
}  // namespace livedisplay
}  // namespace lineage
}  // namespace vendor

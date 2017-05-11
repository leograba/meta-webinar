FILESEXTRAPATHS_prepend := "${THISDIR}/linux-toradex-4.1-2.0.x:"

SRC_URI += " \
            file://0001-Add-inv-mpu6050-devicetree-support.patch \
            file://defconfig \
"

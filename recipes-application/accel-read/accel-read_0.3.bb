SUMMARY = "A sample for using the MPU6050 IMU"
HOMEPAGE = "https://github.com/leograba/hello_mpu6050"
SECTION = "utils"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=93c14c239fd08fe6f5d6f71a6b94bbc7"

SRC_URI = "git://github.com/leograba/hello_mpu6050.git;protocol=git;branch=${SRCBRANCH}"

SRCBRANCH = "master"
SRCREV = "eaa5a0db4a9f186f9bc5107f1e00a5b9725704dc"

S = "${WORKDIR}/git"
TARGET_CC_ARCH += "${LDFLAGS}"

do_install () {
    install -d ${D}${bindir}
    install -m 755 ${S}/accel_read ${D}${bindir}
}

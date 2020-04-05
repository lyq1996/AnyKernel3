# !/bin/sh
#cp /root/android_kernel_oneplus_msm8998/out/arch/arm64/boot/Image ./
#cp /root/android_kernel_oneplus_msm8998/out/arch/arm64/boot/Image.gz ./
cp ../android_kernel_oneplus_msm8998/out/arch/arm64/boot/Image.gz-dtb ./

zip -r9 OP5_5T-lcblues-Kernel-EAS-9.03+.zip * -x .git README.md *placeholder build.sh build1.sh *.zip



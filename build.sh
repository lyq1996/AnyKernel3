# !/bin/sh
#cp /root/android_kernel_oneplus_msm8998/out/arch/arm64/boot/Image ./
#cp /root/android_kernel_oneplus_msm8998/out/arch/arm64/boot/Image.gz ./
cp ../android_kernel_oneplus_msm8998/out/arch/arm64/boot/Image.gz-dtb ./

zip -r9 OP5_5T-lcblues-Kernel-$tag.zip * -x .git README.md *placeholder build.sh *.zip

rm Image.gz-dtb

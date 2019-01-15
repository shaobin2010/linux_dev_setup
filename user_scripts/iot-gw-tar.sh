#/bin/bash

TOPDIR="."
TMPDIR="$TOPDIR/tmp"
SSBOOTDIR="$TOPDIR/f1-mezz1-ss-boot/build/devel/keyver0/dev-signed/any-cpuid"
FINALBOOTDIR="$TOPDIR/f1-mezz1-boot-linux/build/devel/keyver0/dev-signed/any-cpuid"
FAC_DIR="$TOPDIR/iot-gw-factory-tool/build"

File_Name="iot-gw-ccm-$1-$2.tar.gz"

for file_nm in ./* ; do
    case "$file_nm" in
       *.tar.gz )
           rm $file_nm
           ;;
       *)
           ;;
    esac
done

mkdir -p $TMPDIR
rm -f $TMPDIR/*

cp -v "$SSBOOTDIR/u-boot.imx" "$TMPDIR/u-boot.imx"
cp -v "$SSBOOTDIR/u-boot-usb.imx" "$TMPDIR/u-boot-usb.imx"

cp -v "$FINALBOOTDIR/u-boot.f1img" "$TMPDIR/u-boot.f1img"

cp -v "$FAC_DIR/f1-mezz1-fw.f1img" "$TMPDIR/f1-mezz1-fw.f1img" >/dev/null 2>&1
cp -v "$FAC_DIR/MDK.bin" "$TMPDIR/MDK.bin" >/dev/null 2>&1
cp -v "$FAC_DIR/Junk_pkiroot_crt.der" "$TMPDIR/Junk_pkiroot_crt.der" >/dev/null 2>&1
cp -v "$FAC_DIR/HoneywellQAProductPKI.der" "$TMPDIR/HoneywellQAProductPKI.der" >/dev/null 2>&1

tar zcvf "$File_Name" "$TMPDIR"


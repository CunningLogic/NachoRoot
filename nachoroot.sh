#!/system/bin/sh
echo "NachoRoot: ASUS Transformer Prime v1.2"
echo "By Justin Case (jcase)"
echo "Presented by TeamAndIRC, RootzWiki and AndroidPolice"
echo "Testing by -viperboy-"
echo "----------"
echo "Much credit goes to Dan Rosenberg, without his Droid3 root, the idea behind this may not have came to light."
echo "----------"
echo "Usage ./nachoroot.bin <parameter>"
echo "----------"
echo "Parameters: DO NOT RUN OUT OF ORDER."
echo "--stage1 : Reboots the Transformer"
echo "--stage2 : Reboots the Transformer again, and gains root.."
echo "--undo : This is your last step, after installing su/superuser, will fix instabilities from this root."
echo "----------"
  case $1 in
   "--stage1")
	echo "Please reboot then run again with --stage2 parameter."
	mv /data/sensors/AMI304_Config.ini /data/sensors/AMI304_Config.ini.backup 2>&1 > /dev/null
	ln -s /data/local.prop /data/sensors/AMI304_Config.ini 2>&1 > /dev/null
	break;;
   "--stage2")
	echo "Please reboot again to gain root, run again with --undo after rebooting to cleanup."
	echo "ro.kernel.qemu=1" > /data/local.prop 2>/dev/null
	break;;
   "--undo")
	rm /data/sensors/AMI304_Config.ini 2>&1 > /dev/null
	rm /data/local.prop  2>&1 > /dev/null
	mv /data/sensors/AMI304_Config.ini.backup /data/sensors/AMI304_Config.ini 2>&1 > /dev/null
	echo "Cleaning up the Nacho mess, please reboot..."
	break;;
   *)
  esac


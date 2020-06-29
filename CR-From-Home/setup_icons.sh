#!/bin/bash

# Check command line options for -noweb to allow user
# to specify the icons should work in the no web option
opt=""

if [ "$#" -gt "0" ]
then
    if [ $1 == "-noweb" ]
    then
      opt=" -noweb"
    fi
fi

myDir=`echo $PWD`

rm -f vncDAQ.desktop
rm -f vncDCS.desktop
rm -f connectGrafana.desktop
rm -f vncPMT.desktop

echo "[Desktop Entry]" >> vncDAQ.desktop
echo "Version=1.0" >> vncDAQ.desktop
echo "Exec="${myDir}"/scripts/setup_tunnel"${opt} >> vncDAQ.desktop
echo "Name=vnc_DAQ" >> vncDAQ.desktop
echo 'Comment="Sets up tunnel to DAQ VNC"' >> vncDAQ.desktop
echo "Icon="${myDir}"/icons/vncDAQ.png" >> vncDAQ.desktop
echo "Terminal=true"  >> vncDAQ.desktop
echo "Type=Application" >> vncDAQ.desktop

chmod u+x vncDAQ.desktop

echo "[Desktop Entry]" >> vncDCS.desktop
echo "Version=1.0" >> vncDCS.desktop
echo "Exec="${myDir}"/scripts/setup_tunnel_dcs"${opt} >> vncDCS.desktop
echo "Name=vnc_DCS" >> vncDCS.desktop
echo 'Comment="Sets up tunnel to DCS VNC"' >> vncDCS.desktop
echo "Icon="${myDir}"/icons/vncDCS.png" >> vncDCS.desktop
echo "Terminal=true"  >> vncDCS.desktop
echo "Type=Application" >> vncDCS.desktop

chmod u+x vncDCS.desktop

echo "[Desktop Entry]" >> connectGrafana.desktop
echo "Version=1.0" >> connectGrafana.desktop
echo "Exec="${myDir}"/scripts/connect_grafana"${opt} >> connectGrafana.desktop
echo "Name=connect_grafana" >> connectGrafana.desktop
echo 'Comment="Sets up tunnel to Grafana"' >> connectGrafana.desktop
echo "Icon="${myDir}"/icons/connect_grafana.png" >> connectGrafana.desktop
echo "Terminal=true"  >> connectGrafana.desktop
echo "Type=Application" >> connectGrafana.desktop

chmod u+x connectGrafana.desktop

echo "[Desktop Entry]" >> vncPMT.desktop
echo "Version=1.0" >> vncPMT.desktop
echo "Exec="${myDir}"/scripts/setup_tunnel_pmt"${opt} >> vncPMT.desktop
echo "Name=vnc_PMT" >> vncPMT.desktop
echo 'Comment="Sets up tunnel to PMT Monitoring VNC"' >> vncPMT.desktop
echo "Icon="${myDir}"/icons/vncPMT.png" >> vncPMT.desktop
echo "Terminal=true"  >> vncPMT.desktop
echo "Type=Application" >> vncPMT.desktop

chmod u+x vncPMT.desktop

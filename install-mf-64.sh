#! /bin/bash
DIRECTORY=`dirname $(realpath $0)`
python2 $DIRECTORY/installcab.py ~/.cache/winetricks/win7sp1/windows6.1-KB976932-X64.exe mediafoundation
python2 $DIRECTORY/installcab.py ~/.cache/winetricks/win7sp1/windows6.1-KB976932-X64.exe mf_
python2 $DIRECTORY/installcab.py ~/.cache/winetricks/win7sp1/windows6.1-KB976932-X64.exe mfreadwrite
python2 $DIRECTORY/installcab.py ~/.cache/winetricks/win7sp1/windows6.1-KB976932-X64.exe wmadmod
python2 $DIRECTORY/installcab.py ~/.cache/winetricks/win7sp1/windows6.1-KB976932-X64.exe wmvdecod
python2 $DIRECTORY/installcab.py ~/.cache/winetricks/win7sp1/windows6.1-KB976932-X64.exe wmadmod

echo ""
echo "Done!"
echo "Manually download x64 KB968211 @ https://www.microsoft.com/en-us/download/confirmation.aspx?id=19289"
echo "Now you need to get mfplat.dll version 12.0.7601.23471 from elsewhere and place it in your application directory"
echo "Run command 1 in Linux and then command 2 in Windows"
echo "1: cabextract Windows6.1-KB968211-x64-Refresh.msu"
echo "2: expand Windows6.1-KB968212-x64-RefreshPkg.cab -F:mfplat.dll C:\"
echo "--------Attempting AutoDownload from ChrisTitus.com-----"
wget https://www.christitus.com/tools/mfplat.zip
unzip mfplat.zip

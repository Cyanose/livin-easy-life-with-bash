# quickBookmarks.sh


https://user-images.githubusercontent.com/85220613/147910729-e4c8dec0-1c1d-42da-89de-abd36a01d67a.mp4


The script spawns the rofi window with sites that you want to quickly access.

## Configuration

In order to configure the script to work in your environment, you need to change the 2nd line of code: (`path=(...)`) in `bookmark.sh` script, to point at the *bookmarkSelection* directory under your specific directory architecture. Another thing you need to change is the browser command, if You use different browser than *chromium* (25th line of code: (`chromium $site > /dev/null 2>&1`).

In order to add your own custom shortcut to the sites that you want to quickly access, just make a simple file with the same name that you want to call, launching the script. The file should contain URL of the site that you want to access.

## Usage

Just bind the script to some convenient shortcut, and that's all.

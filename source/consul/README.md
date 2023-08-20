# Hashicorp Consul for Synology Package.

## Preparation
### how to prepare the app logo file
* how to prepare the app logo file
  * put the brand log file ```Consul_VerticalLogo_Color_RGB.png``` to logo directory
    > the brand log file can be found at https://www.hashicorp.com/brand
* install imagemagick
  * mac
    ```bash
    brew update
    brew install imagemagick
    ```
  * linux
    ```bash
    sudo apt update
    sudo apt install -y imagemagick
    ```
* convert logo files
  ```bash
  convert -crop 1050x1050+215+185 logo/Consul_VerticalLogo_Color_RGB.png logo/logo.png
  convert -resize 16x16 logo/logo.png ui/images/16.png
  convert -resize 32x32 logo/logo.png ui/images/32.png
  convert -resize 64x64 logo/logo.png ui/images/64.png
  convert -resize 128x128 logo/logo.png ui/images/128.png
  convert -resize 128x128 logo/logo.png PACKAGE_ICON.PNG
  convert -resize 256x256 logo/logo.png PACKAGE_ICON_256.PNG
  ```
### update the package INFO
* update INFO.sh

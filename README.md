# Discord-Updater-For-Linux

Simple and useful bash script that updates discord (.deb package)

## What it does:

- downloads discord from the official site
- automatically uses dpkg to install file
- fixes broken dependencies
- remove tmp after installation

## Works on:

- Debian/Ubuntu based distros

# How-to
```
git clone https://github.com/seu-user/discord-updater.git
```
```
cd discord-updater
```
```
chmod +x atualizardc.sh
```
```
./atualizardc.sh
```
--------------------------------------------------------------------------------------------------------
The package is temporarily downloaded to
```
  /tmp/discord.deb
```
and removed after the installation is finished.

## License

Open-source project made for learning and personal automation purposes.

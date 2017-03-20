SublimeUser3
============

My Sublime Text User folder for Sublime Text 3


PRE-INSTALL
-----------

- Prerequisite: Git must be installed
- Fork the project: https://github.com/Starli0n/SublimeUser3 to F_SublimeUser3


INSTALL
-------

### Package location
- [OSX] `/Users/Starli0n/Library/Application Support/Sublime Text 3/Packages`
- [WIN] `C:\Tools\SublimeText3\Data\Packages` (Download the portable version 64 bit)

### Install the software
- Download Sublime Text 3 (http://www.sublimetext.com/3)
- Backup `Packages` To `Packages.New`
- Install Package Control (https://packagecontrol.io/installation#st3)

### Proxy Settings
Behing a proxy Package Control has to be installed manually.<br/>
In `Package Control.sublime-settings`
```json
{
	"http_proxy": "192.168.x.x:80"
}
```

### Replace the User package configuration
- Close Sublime Text
- Delete the folder `Packages/User`
- Open a terminal here: `Packages`
- Execute the following commands (replace `<user>` by your user name)
```sh
> git clone https://<user>@github.com/<user>/F_SublimeUser.git User
> cd User
> git config user.name <user>
> git config user.email <user>@users.noreply.com
> git remote add upstream https://github.com/Starli0n/SublimeUser.git
```

### Change the configuration depending of the platform
- In `Packages/User/Main.sublime-menu` change `base_file` path of `Git Global Config`
- Configure `FileDiff` command by editing `Packages/User/FileDiffs.sublime-settings`
	- [OSX] Replace by `/usr/local/bin/bcomp` for Beyond Compare
	- [WIN] Update `WinMerge` path
- Configure `Open-Include` package by editing `Packages/User/Open-Include.sublime-settings`
- Check the configuration for `Terminal` package by editing `Packages/User/Terminal.sublime-settings`

### Package Control: Install Packages
[Package Control: Home Page](https://packagecontrol.io)
- [AgentRansack](https://github.com/Starli0n/SublimeAgentRansack) *
- [Alignment](https://packagecontrol.io/packages/Alignment)
- [AutoHotkey](https://packagecontrol.io/packages/AutoHotkey)
- [BracketHighlighter](https://packagecontrol.io/packages/BracketHighlighter)
- [ChannelRepositoryTools](https://packagecontrol.io/packages/ChannelRepositoryTools)
- [Color Highlighter](https://packagecontrol.io/packages/Color%20Highlighter)
- [DocBlockr](https://packagecontrol.io/packages/DocBlockr)
- [Emmet Css Snippets](https://packagecontrol.io/packages/Emmet%20Css%20Snippets)
- [Emmet](https://packagecontrol.io/packages/Emmet)
- [FileDiffs](https://packagecontrol.io/packages/FileDiffs)
- [Git](https://packagecontrol.io/packages/Git)
- [GitGutter](https://packagecontrol.io/packages/GitGutter)
- [GoToClass](https://packagecontrol.io/packages/GoToClass)
- [HTML5](https://packagecontrol.io/packages/HTML5)
- [HTMLAttributes](https://packagecontrol.io/packages/HTMLAttributes)
- [Language - French - Français](https://packagecontrol.io/packages/Language%20-%20French%20-%20Fran%C3%A7ais)
- [LiveReload](https://packagecontrol.io/packages/LiveReload)
- [Open-Include](https://github.com/titoBouzout/Open-Include)
- [Package Control](https://packagecontrol.io/installation#st3)
- [PackageResourceViewer](https://packagecontrol.io/packages/PackageResourceViewer)
- [PHPUnit](https://packagecontrol.io/packages/PHPUnit)
- [Plugin Debugger](https://packagecontrol.io/packages/Plugin%20Debugger)
- [Pretty JSON](https://packagecontrol.io/packages/Pretty%20JSON)
- [rsub](https://packagecontrol.io/packages/rsub)
- [SideBarEnhancements](https://packagecontrol.io/packages/SideBarEnhancements)
- [SublimeLinter](https://packagecontrol.io/packages/SublimeLinter)
- [Terminal](https://packagecontrol.io/packages/Terminal)
- [Theme - Cobalt2](https://packagecontrol.io/packages/Theme%20-%20Cobalt2)
- [TrailingSpaces](https://packagecontrol.io/packages/TrailingSpaces)
- [Verbose](https://packagecontrol.io/packages/Verbose) *
- [Xdebug](https://packagecontrol.io/packages/Xdebug)

(*own plugins)


[OSX] INSTALL
-------------

### Create some alias
```sh
> chflags nohidden ~/Library
> sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
> ln -s "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Resources/OSX/HOME/.gitconfig" "$HOME/.gitconfig"
> ln -s "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Resources/OSX/HOME/.bash_profile" "$HOME/.bash_profile"
> ln -s "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Resources/OSX/HOME/.MacOSX" "$HOME/.MacOSX"
> mkdir "$HOME/.ssh/"
> ln -s "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Resources/Any/HOME/.ssh/config" "$HOME/.ssh/config"
```

### Customize Finder toolbar to open file in Sublime Text
- TODO

### Change font size
- Edit `Packages/User/Preferences.sublime-settings`
- Replace by `"font_size": 12.0`

### Open with Sublime Text
- Copy `Packages/User/Resources/OSX/HOME/Library/Services/Open with Sublime Text.workflow` to `~/Library/Services/Open with Sublime Text.workflow`

### Copy Path to Clipboard
- Copy `Packages/User/Resources/OSX/HOME/Library/Services/Copy Path to Clipboard.workflow` to `~/Library/Services/Copy Path to Clipboard.workflow`
- Add a shorcut `Ctrl+Super+C` (System Preferences > Keyboard > Shortcuts > Services > Files and Folders)

### iTerm² Here…
- Copy `Packages/User/Resources/OSX/HOME/Library/Services/iTerm² Here….workflow` to `~/Library/Services/iTerm² Here….workflow`
- The script is based on iTerm` of [Terminal](https://github.com/wbond/sublime_terminal/blob/master/iTerm2-v3.sh) package

### Show hidden files with a widget
- Copy `Packages/User/Resources/OSX/HOME/Library/Widgets/HiddenFiles.wdgt` to `~/Library/Widgets/HiddenFiles.wdgt`

### Change keyboard layout
- Copy `Packages/User/Resources/OSX/HOME/Library/Keyboard Layouts/*` to `~/Library/Keyboard Layouts/*`
- System Preferences > Laguage & Text > Input Sources > French X-Coding

### Remote Sublime Text
On the server
```
> sudo curl -Lo /usr/local/bin/rsub https://raw.githubusercontent.com/textmate/rmate/master/bin/rmate --insecure
> sudo chmod a+x /usr/local/bin/rsub
```
`/usr/local/bin` should be in `$PATH

[WIN] INSTALL
-------------

### Usefull binaries
- Include this path to `%PATH%` Environment Variable
	- `C:\Tools\SublimeText3\Data\Packages\User\Resources\Windows\bin`
- Execute batch files (*.bat or *.cmd) or python scripts (*.py) in Sublime Text (Ctrl+B)
- Call Sublime Text from a MS-DOS Console (> subl file_name)
- Shortcut for git command in a MS-DOS Console (> g git_commands_params)
- Add syntax highlighting for Git global config (Require Python) (> git g)

### Create an alias `.gitconfig`
`> mklink  %HOME%\.gitconfig C:\Tools\SublimeText3\Data\Packages\User\Resources\Windows\HOME\.gitconfig`

### Change the path of `Nuget Config`
In `Packages/User/Main.sublime-menu` change `NuGet Config` path

### Create aliases to use bash
```bat
> mklink %HOME%\.bashrc C:\Tools\SublimeText3\Data\Packages\User\Resources\OSX\HOME\.bash_profile
> mklink %HOME%\.ssh\config C:\Tools\SublimeText3\Data\Packages\User\Resources\Any\HOME\.ssh\config
> junction %HOME%\.MacOSX C:\Tools\SublimeText3\Data\Packages\User\Resources\OSX\HOME\.MacOSX
```

### Add Sublime Text to the right click context menu
- Edit the file `Packages/User/Resources/Windows/Tools/SublimeTextRightClickContextMenu.reg`
- Replace `C:\\Tools\\SublimeText3\\` by your installation directory (Pay attention to replace `\` by `\\`)
- Save and execute `SublimeTextRightClickContextMenu.reg`

### WinMerge filter
- A WinMerge filter for Sublime Text Package `Packages/User/Resources/Windows/Tools/SublimeTextWinmergeFilter.flt`

### Add `Copy Path to Clipboard` feature to the right click context menu
- Install `Packages/User/Resources/Windows/Tools/ClipboardPath_Setup.exe`
- Add an icon `Packages/User/Resources/Windows/Tools/ClipboardPath_Setup.exe.reg`


XDEBUG
------

### [OSX] Install XDebug (or use a package with preinstalled XDebug like XAMP or MAMP)
- Dowload pre-compiled PHP extension from ActiveState for Mac OS X
	- http://aspn.activestate.com/ASPN/Downloads/Komodo/RemoteDebugging
- Unarchive the downloaded file
- Enter the appropriated directory and find the file named "xdebug.so"
- In Finder, press Super+Shift+G and paste this directory
	- `/usr/lib/php/extensions/no-debug-non-zts-20090626/`
- Drag & Drop "xdebug.so" file to this directory
- Open php.ini normaly there `/private/etc/php.ini`
- Append the following lines to the bottom of the file
```ini
[xdebug]
zend_extension=/usr/lib/php/extensions/no-debug-non-zts-20090626/xdebug.so
xdebug.idekey=sublime.xdebug
xdebug.remote_enable=1
xdebug.show_local_vars=1
xdebug.remote_log=/tmp/xdebug.log
```
- Tweak configuration setting
	- http://xdebug.org/docs/all_settings
- Restart the Apache web server from a terminal
```sh
> export XDEBUG_SESSION=sublime.xdebug
> sudo /usr/sbin/apachectl restart
```
- Test the installation by searching for "XDebug" on a phpinfo() page

### [WIN] Install XDebug with XAMPP
- Download the right version of XDebug according your XAMPP version, prefer a TS one (TS stands for Thread Safe)
 	- https://xdebug.org/download.php
- Copy the file to the ext location of PHP
	- `C:\xampp\php\ext\php_xdebug.dll`
- Open php.ini normaly there `C:\xampp\php\php.ini`
- Append the following lines to the bottom of the file
```ini
[xdebug]
zend_extension = "C:/xampp/php/ext/php_xdebug.dll"
xdebug.idekey=sublime.xdebug
xdebug.remote_enable=1
xdebug.show_local_vars=1
xdebug.remote_log=C:/xampp/php/logs/xdebug.log
```
- Add an environment variable
	- `XDEBUG_SESSION=sublime.xdebug`
- Restart Apache
- Test the installation by searching for "XDebug" on a phpinfo() page

### Install Firefox Add-on
- easy Xdebug
	- https://addons.mozilla.org/en-US/firefox/addon/easy-xdebug-with-moveable-
	- Change `Value of the debug cookie` to `sublime.xdebug`
- LiveReload
	- https://addons.mozilla.org/en-US/firefox/addon/livereload/

### Apache
- Restart service with `XDEBUG_SESSION=sublime.xdebug`
- Check the value on phpinfo() page

### Run a XDebug session
- Firefox
	- Open the PHP file to debug
	- Activate LiveReload on this file
	- Toggle xdebug cookie (red->active)
- Sublime Text
	- Add some breakpoints on the code (F9)
	- `Start debugging` (Shift+F5)
	- Save the file to debug to activate the live reloading
- if the debug session does not work, restart Apache, Firefox and Sublime Text


PHPUNIT
-------

PHPUnit requires the install of XDebug

### [WIN] Install PHPUnit
- Include the path `C:\Tools\System` to `%PATH%` Environment Variable
- Include the path `C:\xampp\php` to `%PATH%` Environment Variable
- Execute the following command
	- `C:\Tools\System>echo @php "%~dp0phpunit.phar" %* > phpunit.cmd`
- Download the last version of PHPUnit
	- https://phar.phpunit.de/phpunit.phar
- Copy it to `C:\Tools\System\phpunit.phar`
- Test the installation
	- `phpunit --version`
- Test PHPUnit with the following command on a configured project
	- `phpunit --coverage-html=./report --bootstrap=./bootstrap.php`


COMPOSER
--------

### [OSX] Install Composer
- Install Composer in `$HOME` following the [guidelines](https://getcomposer.org/download)
- Create an alias
```sh
> sudo ln -s "$HOME/composer.phar" /usr/local/bin/composer
```

### [WIN] Install Composer
- Include the path `C:\Tools\System` to `%PATH%` Environment Variable
- Execute the following command
	- `echo @php "%~dp0composer.phar" %*>composer.cmd`
- Setup proxy without `http(s)://` if needed
```bat
@set HTTP_PROXY=<proxy>:<port>
@set HTTPS_PROXY=<proxy>:<port>
```
- Execute the following commands in `C:\Tools\System`
```bat
> php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
> php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === 'fd26ce67e3b237fffd5e5544b45b0d92c41a4afe3e3f778e942e43ce6be197b9cdc7c251dcde6e2a52297ea269370680') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); }"
> php composer-setup.php
> php -r "unlink('composer-setup.php');"
```
- Test the installation
	- `composer --version`
- Basic commands
```bat
> composer init
> composer install
> composer update
> composer dump-autoload -o
```


PACKAGE DEVELOPMENT
-------------------

### Create a Release and a Development environment
- Close Sublime Text
- Rename `Packages` To `Packages.ctrl`
- Copy `Packages.ctrl` To `Packages.git`
- Create file `Packages.ctrl/PackageControl`
- Create a file `Packages.git/_.git`
- Add `Packages.git/_.git/Main.sublime-menu` file
```json
[
	{
		"caption": "☰ ☱ ☲ ☳ ☯ ☴ ☵ ☶ ☷",
		"id": "-"
	}
]
```

### Inspect Core Packages
- Create a `Data/Core Packages` directory
- Copy packages from `Packages/*.sublime-package` to `Data/Core Packages/*.sublime-package`
- Unzip packages to inspect

### Own Sublime Package Control Channel: package_control.git
- Execute the following commands (or Fork the project before)
```sh
> cd C:\Tools\SublimeText3\Data\Local
> git clone https://Starli0n@github.com/Starli0n/SublimePackages.git package_control.git
> cd package_control.git
> git config user.name Starli0n
> git config user.email Starli0n@users.noreply.com
```

### Sublime Package Control Default Channel: package_control_channel.git
- Fork the project `https://github.com/wbond/package_control_channel.git`
- Open a terminal here: `Packages.git`
- Execute the following commands
```sh
> cd C:\Tools\SublimeText3\Data\Local
> git clone https://Starli0n@github.com/Starli0n/f_package_control_channel.git package_control_channel.git
> cd package_control_channel.git
> git config user.name Starli0n
> git config user.email Starli0n@users.noreply.com
> git remote add --track master upstream https://github.com/wbond/package_control_channel.git
```

- `Packages.ctrl/User/Package Control.sublime-settings` should be something like
```json
	"installed_packages": [<list_of_installed_packages>]
	],
	"repositories":
	[
		"https://raw.githubusercontent.com/Starli0n/SublimePackages/master/package_control.json"
	]
```

- In `Packages.git/User/Package Control.sublime-settings` removed packages under development as they would be cloned

### Develop a package `MyPackage`
- A new package should be added to `Data/Local/package_control.git/out_of_control.json` until the PR to Package Control
- A forked package should be added to `Data/Local/package_control.git/patched_repository.json` until the PR to the author repository
- Commit and Push modifications
- If exists delete the folder `MyPackage` form `Packages.git`
- Open a terminal here: `Packages.git`
- Execute the following commands
```sh
> git clone https://Starli0n@github.com/Starli0n/MyPackage.git MyPackage
> cd MyPackage
> git config user.name Starli0n
> git config user.email Starli0n@users.noreply.com
```

### Submitting a package
- Package Control: Submitting a [Package](https://packagecontrol.io/docs/submitting_a_package)
- Use [ChannelRepositoryTools](https://packagecontrol.io/packages/ChannelRepositoryTools) to test the integration
- After PR merge, remove the package from `Data/Local/package_control.git/out_of_control.json`

### Use Python [Plugin Debugger](https://sublime.wbond.net/packages/Plugin%20Debugger)
- Install the [wxPython runtime](http://www.wxpython.org/download.php) required for `Winpdb`
- Download [Winpdb](http://winpdb.org/download)
- Unzip in a temporary folder
- Execute from there
	- `python setup.py install --record winpdb.txt`
- After the installation, change shortcuts in `PYDIR/Lib/site-packages/winpdb.py` to Visual Studio like
```ini
AC_CHAR = "\t"
AC_EXIT = "Alt-X"
AC_ANALYZE = "F3"
AC_BREAK = "F4"
AC_GO = "F5"
AC_NEXT = "F10"
AC_STEP = "F11"
AC_GOTO = "Ctrl-F10"
AC_TOOGLE = "F9"
AC_RETURN = "Shift-F11"
```


[OSX] PACKAGE DEVELOPMENT
-------------------------

- Copy `Packages/User/Resources/OSX/Library/Services/• Sublime Packages.workflow` to `~/Library/Services/• Sublime Packages.workflow`
- Switch to Release mode `Packages.ctrl`
	- Right click on the folder and execute the service `• Sublime Packages.workflow`
- Switch to Dev mode `Packages.git`
	- Right click on the folder and execute the service `• Sublime Packages.workflow`


[WIN] PACKAGE DEVELOPMENT
-------------------------

- Copy `Packages/User/Resources/Windows/bin/Junction.exe` To `C:\Tools\System\junction.exe`
- Include the path `C:\Tools\System` to `%PATH%` Environment Variable
- Copy `Data/Packages/User/Resources/Windows/InstallDir/Data/*` To `Data/*`
- Switch to Release mode `Packages.ctrl`
	- Run the shortcut `sublime_text_pkg.ctrl.bat`
- Switch to Dev mode `Packages.git`
	- Run the shortcut `sublime_text_pkg.git.bat`
- Fetch all Git package
	- Run `Packages/User/Resources/Windows/PackageFetch.bat`


TIPS
----

### Update Project List
- Open the file `Data/Local/Session.sublime_session` with another editor (`Project > Sublime Session`)
- Update the list `workspaces > recent_workspaces`

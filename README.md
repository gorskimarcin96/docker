# RUN PROJECT
1. Put your project to /app.
2. Run command: `sudo sh run.sh`.
3. [localhost:8001](http://localhost:8001) - this is your app.
3. [localhost:8002](http://localhost:8002) - this is your phpMyAdmin.
3. [localhost:8003](http://localhost:8003) - this is your mongo-express.

## CONFING XDEBUG ON PHPSTORM
### 1. Listen [Megadeth](https://www.youtube.com/watch?v=3qzBGYG786Y&list=PLxzSZG7g8c8wkI0oLUmZTcPMB_ej6Kknk)! :guitar::metal::fire:
```diff
- !important
```

### 2. Add xDebug extension to browser :bug:
* Install [xDebug helper](https://chrome.google.com/webstore/detail/xdebug-helper/eadndfjplgieldjbigjakmdgkmoaaaoc).
* In browser click **right** mouse button on `bug extension` and select `options`.
* Select IDE Key: `PhpStorm`.
* In browser click **left** mouse button on `bug extension` and choose `debug`.

### 3. Add server container to PhpStorm
* PhpStorm's settings (**ctrl+shift+s**) | Languages & Frameworks | PHP | Servers
* Add: server
* Set name: **yourTheBestName**
* Set host: **localhost**
* Set port: **8001**
* Select debugger: **Xdebug**
* Check: **Use path mappings**
* Set in **Project files** -> **absolute path on the server**: `/var/www/html`

### 4. Add debug configurations
* Run | Edit configurations...
* Add **PHP remote Debug**.
* Set name: **yourTheBestName**.
* Filter debug connection by IDE key: **check**.
* Select your server: **yourTheBestName**.
* IDE key(session id): **PHPSTORM**.

### 5. Configure xdebug in PHPSTORM
* PhpStorm's settings (**ctrl+shift+s**) | Languages & Frameworks | PHP | Debug.
* Add debug port: **9003**.
* In section Xdebug check all checkboxes. 

### 6. Turn on listening PHP bugs
* Run | Start Listening for PHP Debug Connections

### 7. Valid your vmoptions
* Help | Edit Custom Vm Options...
* Add line if you not have `-Djava.net.preferIPv4Stack=true`.

### 8. Valid your IP
Default setting **xdebug.client_host** in a container is **172.17.0.1**.<br>
Check your IP with command: <br> 
`ip route show | awk '/docker/ {print $ 1}' | rev | cut -c 4- | rev`<br>
If you have other IP, replace line `xdebug.client_host` in `/config/php/docker-php-ext-xdebug.ini`.

### 9. Restart PhpStorm
* Click button with cross icon (**alt+F4**)
* Confirm Exit: **Exit**
* Run PhpStorm

### 10. Buy me a kebab :hamburger:!
```diff
- !important
```

### :fire::skull: Kill ’Em All :skull::fire:
:fire::skull::bug::bug::bug::bug::bug::bug::bug::bug::skull::fire:
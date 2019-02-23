# :mute: Mac Sound Re-Enabler :bowing_man:

Simple stupid app used to fix the sound issues (read below) while using an external HDMI monitor on macOS for video only.



![Reeeeee](https://i.kym-cdn.com/photos/images/newsfeed/000/952/664/4b6.jpg)





## Sound going mute and not responding to any changes in the System Sound Preferences

This bug occurs occasionally when you attach a HDMI monitor to your Macbook, and using the HDMI for video output only - 
so, you still use your primary sound output device as default. 
The sound on primary output becomes mute randomly and it ignores any user actions such as (un)Mute, Volume Up, Volume Down, changing the default output device, attaching headphones etc. 

:trollface:



## :hammer_and_wrench: The solution

It can either be fixed by rebooting the system, OR by killing the system's `coreaudiod` daemon.

This is basically what this app does - it restarts the sound daemon.

After clicking on the Skull,  the app kills `coreaudiod`, and the system automatically restarts the daemon afterwards, and your sound is back to normal :musical_score:



![matrix](https://i.imgur.com/1qNOOjd.png)

After the successful daemon restart, the app closes on itself and you're done :bowtie:



## :computer: Screenshots

### The initial screen

![Initial screen](https://i.imgur.com/tXDrRaY.png)

### Main window

![Main window](https://i.imgur.com/H38sPsf.png)

### Authenticating

![Auth](https://i.imgur.com/hUmFp0V.png)

### Audio Bug Solved :bowtie:



![Done](https://i.imgur.com/UP3STlp.png)

## Licensing
This software is released under the [GPL-3.0](https://github.com/dragstor/mac-sound-fix/blob/master/LICENSE)

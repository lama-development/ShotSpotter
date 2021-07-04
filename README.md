# **Endah's Shot Spotter**
![shot spotter](https://user-images.githubusercontent.com/79053058/123869432-4473d980-d931-11eb-8618-76b86a2ca60e.png)


## :bookmark_tabs: **Description** 
This is a simple standalone **ShotSpotter** script made for **FiveM**.  

The script will detect when gunshots are fired and will put out a sound and text alert to all of the Law Enforcement patrol vehicles with an approximate location.
No permissions are being used, you just have to be inside a police car to receive the gunshot alert.  

To be realistic, the ShotSpotter has a default delay of 20 seconds to put out an alert after gunshots are detected.  
Throwables, melees, fire extinguishers, stunguns, flareguns, and suppressed weapons won't be detected by the ShotSpotter.  
These last two parameters can be configured in the *config.lua* as well as a couple of other options (see [config options](https://github.com/ItzEndah/ShotSpotter#config-options)).  


## :bulb: **Features** 
- Simple and clean 
- Highly customizable 
- Sound effect 
- Animated map blip 
- Suppressed weapons won't be detected 
- Ability to blacklist weapons 


## :eyes: **Preview** 
### *Video demo*
[Endah's Shot Spotter - FiveM Resource | DEMO](https://youtu.be/bIVGg95TFsY)

### *Gunshot alerts*
![gunshot alert 1](https://i.imgur.com/5yV9NSq.png)
![gunshot alert 2](https://i.imgur.com/euOSLHr.png)

### *Map blip*
![map blip](https://i.imgur.com/VDzuUtg.gif)

### *Config options*
![config options](https://i.imgur.com/hzCEqYI.png)


## :white_check_mark: Changelog
> **v1.0.2**
> - Reduced resource impact on performance (0.26ms to 0.08ms)

> **v1.0.1** (MichaelCoding25)
> - Updated InvokeNative to the actual Get StreetNameAtCoord native
> - Replaced outdated GetPlayerPed with PlayerPedId

> **v1.0**
> - Initial Release 

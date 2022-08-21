# **ShotSpotter - Gunshot Detection System**
![ShotSpotter](https://user-images.githubusercontent.com/79053058/181919066-c840a974-d8a4-4dca-a89b-dbe71ca7e58c.png)

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
[Youtube](https://youtu.be/bIVGg95TFsY)

### *Gunshot alerts*
![gunshot alert 1](https://i.imgur.com/5yV9NSq.png)
![gunshot alert 2](https://i.imgur.com/euOSLHr.png)

### *Map blip*
![map blip](https://i.imgur.com/VDzuUtg.gif)

### *Config options*
![config options](https://user-images.githubusercontent.com/79053058/185755495-66d9df76-b55a-4c89-9817-3ebcf7709d76.png)

## :bar_chart: **Resmon**
| Context | CPU |
| ------------- | ------------- |
| Idle  | 0.03 ms  |
| Peak  | 0.04 ms  |

## :inbox_tray: **Installation**
- Rename the folder from `ShotSpotter-main` to `ShotSpotter`
- Drag the folder to your server resource folder
- Add `start ShotSpotter` or `ensure ShotSpotter` to your server.cfg 

## :white_check_mark: **Changelog**
> **v1.4**
> - Added version checker

> **v1.3**
> - Removed useless AddEventHandler 
> - Used pre-hashed string to remove GetHashKey  
> (Thanks to *Ekinoxx0*)

> **v1.2**
> - Reduced resource impact on performance (0.26ms to 0.08ms)

> **v1.1** 
> - Updated InvokeNative to the actual Get StreetNameAtCoord native
> - Replaced outdated GetPlayerPed with PlayerPedId  
> (Thanks to *MichaelCoding25*)

> **v1.0**
> - Initial Release 

## :heart: **Support me**
Please consider leaving a like or a simple comment if you enjoyed this release, to show support and allowing me to keep making free high-quality resources.  

You can also check out my other releases:
- [TruckJob](https://forum.cfx.re/t/free-truckjob-work-as-a-truck-driver/4898910)
- [HealingPads](https://forum.cfx.re/t/free-healingpads-heal-at-hospitals/4888341)
- [CarLock](https://forum.cfx.re/t/free-carlock-animation-sound/3768972/1)

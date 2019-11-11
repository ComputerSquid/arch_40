## Arch 40

![assembled_keyboard_1](https://i.imgur.com/mGvHH25.jpg)
![assembled_keyboard_2](https://i.imgur.com/xLTRGtF.jpg)

#### Case Renders:
![case_render_1](https://i.imgur.com/kMommcw.jpg)
![case_render_2](https://i.imgur.com/q0FfRJi.jpg)

#### Switch Plate:
![switch_plate_render](https://i.imgur.com/iD0z3CB.jpg)

## 40% Ortholinear + Columnar Stagger Keyboard
* Inspired by the Ergodox, Atreus, Iris, Corne, and probably others

* Design goals:
    * Efficiency and minimalism of a 40% form factor
    * Ergo benefits of tilted columnar stagger layout
    * Ease of use coming from ANSI style layouts
    * Simplicity of a non-split keyboard
    * Compatability with Ergodox style keysets

## Assembly:
* Stacked acrylic layer case, metal switch plate (or could also be acrylic)
    * Layer dimensions and path lengths are outlined in `path_length.md`

* Files for laser cutting by Ponoko/other services in `./illustrator_files`
    * Includes case layer DXF files imported into Adobe Illustrator at 1:1 scale with units in millimeters
    * `final_cut_layout.eps` is Ponoko's P3 size template with case layers, **without plate**
    * `final_cut_layout_plate.eps` is Ponoko's P3 size template with case layers, **with plate**

* Currently designed to be handwired with a Teensy2.0, may design a pcb later

#### Component list:
* Acrylic case layers + plate
* (49) Cherry MX style switches
* (1) 2u Cherry style **plate-mounted** stabilizer
* Teensy2.0
* Adafruit USB-mini breakout board (or a simple female USB-mini)
* WS2812B LED strips
* (49) 1N4184 diodes
* M2 Standoffs and screws (10mm length standoffs, 5mm length screws)

#### Case Stack Order:
1) `arch_40_case_layer0`
2) `arch_40_plate`
3) `arch_40_case_layer2-3`
4) `arch_40_case_layer2-3` (repeated)
5) `arch_40_case_layer4`
6) `arch_40_case_layer5`

* **Note:** `arch_40_case_layer2-3` is designed to be used twice, it contains the cutout for the USB connection
* `arch_40_case_layer4` can also be repeated to make more space for handwiring and LED strips
    * This layer can be added to the laser cut layout by copying the `arch_40_case_layer4` file and adding it to the layout
* Resulting case height with 3mm acrylic layers + 1.5mm metal plate is 16.5mm

#### Matrix:
![matrix](https://i.imgur.com/ph9qbX4.jpg)

#### Wiring Example:
![wiring_example_no_led](https://i.imgur.com/JU2SwzP.png)
![wiring_example_with_led](https://i.imgur.com/pITj7ql.jpg)

#### Teensy2.0 Pinout:
* Column 0 = Backspace key column
* Row 0 = QWERTY row
~~~
Rows:               Columns:                            LED:
-----------------------------------------------------------------
r0 : F0             c0 : F7         c6 : C6             vcc : VCC
r1 : F1             c1 : B6         c7 : D3             gnd : GND
r2 : F4             c2 : B5         c8 : D2            data : B1 
r3 : F5             c3 : B4         c9 : D1
r4 : F6             c4 : D7        c10 : D0
                    c5 : C7        c11 : B7
~~~
#### Firmware Flashing:
* Linux:
    * The Teensy2.0 controller can be flashed easily with the [teensy-loader-cli](https://www.pjrc.com/teensy/loader_cli.html)

~~~
$ teensy-loader-cli -mcu=atmega32u4 -w -v ./firmware/arch40firmware.hex
~~~
* MacOS/Windows:
    * Can be flashed with the [Teensy Loader Application](https://www.pjrc.com/teensy/loader.html)
#### LED Backlighting:
* Default firmware `arch40firmware.hex` includes configuration for WS2812B LED backlighting strips
    * The data pin for the LED's is set to pin B1 on the Teensy2.0
    * Default 12 LED quantity, 10 backlight brightness levels, variable color hue
    * To change the LED configuration, the `arch40firmware.json` file can be uploaded to [Keyboard Firmware Builder](https://kbfirmware.com/) and edited/recompiled as desired

## Note:
* Kerf of plate and case layers is set to 0.15mm (typical for Ponoko/ Laserboost/ Lasergist)

## To-do:
* Add PCB files

###### Model was created in Solidworks, then exported as STL/DXF. Feel free to use/modify/redistribute.

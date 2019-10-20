## Arch 40

![assembled_keyboard](https://i.imgur.com/.jpg)

#### Case Renders:
![case_render_1](https://i.imgur.com/kMommcw.jpg)
![case_render_2](https://i.imgur.com/q0FfRJi.jpg)

#### Switch Plate:
![switch_plate_render](https://i.imgur.com/iD0z3CB.jpg)

### Ortholinear, columnar stagger keyboard switch plate and case
* Inspired by the Ergodox, Atreus, Iris, Corne, Alice, and probably others

* Design goals:
    * Efficiency and minimalism of a 40% form factor
    * Ergo benefits of columnar stagger combined with a tilted ortholinear layout
    * Ease of use coming from ANSI style layouts
    * Simplicity of a non-split keyboard

* Compatible with Ergodox style keysets

## Assembly:
* Stacked acrylic layer case, metal switch plate (or could also be acrylic)
    * Case layer holes are compatible with standard M2 brass screws/standoffs
    * Layer dimensions and path lengths are outlined in `path_length.md`

* Files for laser cutting by Ponoko in `./illustrator_files`
    * Includes case layer DXF files imported into Illustrator at 1:1 scale with units in millimeters
        * Does not include the plate as I had the plate DXF file cut by lasergist 
    * `final_cut_layout` is Ponoko's P3 template with the layers grouped to fit

* Currently meant to be handwired with a Teensy2.0 or similar, may design a pcb later

#### Matrix and Wiring Example:
![matrix](https://i.imgur.com/ph9qbX4.jpg)
![wiring_example](https://i.imgur.com/.jpg)

* Total of 5 rows and 12 columns
* Teensy2.0 Pinout:

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

#### Stack order:
1) `arch_40_case_layer0`
2) `arch_40_plate`
3) `arch_40_case_layer_2-3`
4) `arch_40_case_layer_2-3` (repeated)
5) `arch_40_case_layer_4`
6) `arch_40_case_layer_5`

* Note: `arch_40_case_layer_2-3` is designed to be used twice, it contains the cutout for the USB connection
* `arch_40_case_layer4` can also be repeated to make more space for handwiring and LED strips
    * This layer can be added to the laser cut layout by copying the dxf file and adding it to the layout
* Resulting case height with 3mm acrylic layers + 1.5mm metal plate is 16.5mm
* The rear cutout is designed for a mini usb connection, like the one on the Teensy2.0

## Flashing firmware:
#### Dependencies:
* [dfu-programmer](https://dfu-programmer.github.io/)
* sudo

#### Default layout:
![keyboard_layout_editor_image](https://i.imgur.com/W2Qy6F0.jpg)

#### Linux flashing:
* With controller plugged into computer in dfu mode:
~~~
sudo dfu-programmer atmega32u4 erase
sudo dfu-programmer atmega32u4 flash ~/your/firmware/path/file.hex
sudo dfu-programmer atmega32u4 start
~~~
 
Alternatively, can use `dfu-reflash.sh` script in `./firmware` to speed up reflashing files compiled with Keyboard Firmware Builder
* Default firmware path file name is already specified in script, can be changed with your chosen file, directory
* Target for Teensy2.0 controllers is `atmega32u4`, can be replaced with any other controller that is compatible with dfu-programmer
* To use script, connect the controller to computer, run the script with command below, press the reset button on keyboard, and press any key to continue (with another keyboard)

~~~
$ bash ./firmware/dfu-reflash.sh
~~~

#### LED Backlighting:
* Default firmware `arch_40_firmware.hex` includes configuration for WS2812 LED backlighting strips
    * The data pin for the LED's is set to pin B1 on the teensy 2.0
    * Default 16 LED quantity, 10 backlight brightness levels
    * To change the LED configuration, the `arch_40_firmware.json` can be uploaded to [Keyboard Firmware Builder](https://kbfirmware.com/) and edited/recompiled

## Note:
* Kerf of plate and case layers is set to 0.15mm (typical for Ponoko/ Laserboost/ Lasergist)

## To-do:
* Add picture of assembled prototype
* Add picture of handwiring

###### Model was created in Solidworks, then exported as STL/DXF. Feel free to use/modify/redistribute.

## Arch 40

![assembled_keyboard](https://i.imgur.com/.jpg)

#### Case Renders:
![case_render_1](https://i.imgur.com/kMommcw.jpg)
![case_render_2](https://i.imgur.com/q0FfRJi.jpg)

#### Switch Plate:
![switch_plate_render](https://i.imgur.com/iD0z3CB.jpg)

#### Sample Layout:
![keyboard_layout_editor_image](https://i.imgur.com/PTXFNdo.jpg)

#### Wiring Example:
![wiring_example](https://i.imgur.com/.jpg)


### Ortholinear, columnar stagger keyboard switch plate and case
* Inspired by the Ergodox, Atreus, Iris, Corne, Alice, and probably others

* Design goals:
    * Efficiency and minimalism of a 40% form factor
    * Ergo benefits of columnar stagger combined with a tilted ortholinear layout
    * Ease of use coming from ANSI style layouts
    * Simplicity of a non-split keyboard

* Compatible with Ergodox style keysets


### Assembly:
* Stacked acrylic layer case, metal switch plate (or could also be acrylic)
    * Case layer holes are compatible with standard M2 brass screws/standoffs
    * Layer dimensions and path lengths are outlined in `path_length.md`

* Files for laser cutting by Ponoko in `./illustrator_files`
    * Includes case layer DXF files imported into Illustrator at 1:1 scale with units in millimeters
        * Does not include the plate as I had the plate DXF file cut by lasergist 
    * `final_cut_layout` is Ponoko's P3 template with the layers grouped to fit

* Stack order:
1) `arch_40_case_layer0`
2) `arch_40_plate`
3) `arch_40_case_layer_2-3`
4) `arch_40_case_layer_2-3` (repeated)
5) `arch_40_case_layer_4`
6) `arch_40_case_layer_5`

* Note: `arch_40_case_layer_2-3` is designed to be used twice, it contains the cutout for the USB connection
* Resulting case height with 3mm acrylic layers + 1.5mm metal plate is 16.5mm
* The rear cutout is designed for a mini usb connection, like the one on the Teensy2.0

### Note:
* Kerf of plate and case layers is set to 0.15mm (typical for Ponoko/ Laserboost/ Lasergist)
* Default firmware does not include any LED configuration.

### To-do:
* Add picture of assembled prototype
* Add picture of handwiring
* Add firmware files

###### Model was created in Solidworks, then exported as STL/DXF. Feel free to use/modify/redistribute.

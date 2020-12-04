include <common.scad>

// when you don't use 2x2u for the thumbkey.
is_goldberg = false;
// when you use the minimalist variant.
is_minimalist = true;

bottom_plate_thickness = 5;
pcb_space_thickness = is_goldberg ? 4 : 6;
bottom_pcb_thickness = bottom_plate_thickness + pcb_space_thickness;
switch_plate_thickness = is_goldberg ? 5 : 3;
bottom_pcb_switch_thickness = bottom_pcb_thickness + switch_plate_thickness;

promicro_trrs_height = 12;
idc_space_height = 25;

movement = is_goldberg ? 3 : 5;

module
almost_flat_sphere()
{
    resize([ 15, 15, 4.5 ]) translate([ 0, 0, -75 ]) sphere(r = 75);
}

module
tenting_cylinder()
{
    hull()
    {
        translate([ 0, 0, 25 ]) almost_flat_sphere();
        translate([ 0, 0, 4 ]) almost_flat_sphere();
    }
}

module
base_case()
{
    difference()
    {
        union()
        {
            minkowski()
            {
                translate([ 0, 0, 12 ]) sphere(r = 12);
                linear_extrude(height = 0.1) shape_of_pcb();
            }
            for (i = [0:len(tenting_screw_positions) - 1]) {
                translate(tenting_screw_positions[i]) tenting_cylinder();
            }
        }

        for (i = [0:len(tenting_screw_positions) - 1]) {
            translate([ 0, 0, -1 ]) linear_extrude(height = (12 * 2.5))
                translate(tenting_screw_positions[i]) tenting_hole();
        }
    }
}

module case ()
{
    difference()
    {
        base_case();
        translate([ 0, 0, bottom_plate_thickness ]) linear_extrude(height = pcb_space_thickness) shape_of_pcb();
        translate([ 0, 0, bottom_plate_thickness ]) linear_extrude(height = promicro_trrs_height) promicro_space();
        if (is_minimalist) {
            translate([ 0, 0, bottom_plate_thickness ]) linear_extrude(height = idc_space_height) idc_space();
        } else {
            translate([ 0, 0, bottom_plate_thickness ]) linear_extrude(height = promicro_trrs_height) trrs_space();
        }
        translate([ 0, 0, bottom_pcb_thickness ]) linear_extrude(height = 5) alpha_holes(14);
        translate([ 0, 0, bottom_pcb_thickness ]) linear_extrude(height = 5) thumb_hole(96.6, -98.7, 153.4, true, 14, is_goldberg);
        translate([ 0, 0, bottom_pcb_thickness ]) linear_extrude(height = 5) thumb_hole(113.7, -107.3, -26.6, true, 14, is_goldberg);
        translate([ 0, 0, bottom_pcb_switch_thickness ]) linear_extrude(height = 23) alpha_holes(19.5);
        translate([ 0, 0, bottom_pcb_switch_thickness ]) linear_extrude(height = 23) thumb_hole(96.6, -98.7, 153.4, false, 19.5, is_goldberg);
        translate([ 0, 0, bottom_pcb_switch_thickness ]) linear_extrude(height = 23) thumb_hole(113.7, -107.3, -26.6, false, 19.5, is_goldberg);
    }
}

// bottom case.
intersection()
{
    case();
    translate([150, -150, movement]) {
        cube(size = [400, 400, 12 ], center = true);
    }
}

// top case.
translate([160, 0, -bottom_pcb_thickness]) {
    difference()
    {
        color("navy")case();
        translate([150, -150, movement]) {
            cube(size = [400, 400, 12 ], center = true);
        }
    }
}

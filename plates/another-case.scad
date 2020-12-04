include <common.scad>;

$fn = 60;

bottom_thickness = 3;
middle_thickness = 8;
switch_thickness = 3;
top_thickness = 7;

use_tenting_screws = true;

is_36 = false;

is_case = true;

is_goldberg = false;

is_high = false;

module
bottom_plate()
{
    difference()
    {
        union()
        {
            offset(r = 10) shape_of_pcb();
            if (use_tenting_screws) {
                for (i = [0:len(tenting_screw_positions) - 1]) {
                    translate(tenting_screw_positions[i]) tenting_wing();
                }
            }
        }
        if (use_tenting_screws) {
            for (i = [0:len(tenting_screw_positions) - 1]) {
                translate(tenting_screw_positions[i]) tenting_hole();
            }
        } else {
            for (i = [0:len(tightening_screw_positions) - 1]) {
                translate(tightening_screw_positions[i]) tightening_hole();
            }
        }
    }
}

module
middle_plate()
{
    difference()
    {
        bottom_plate();
        shape_of_pcb();
        // promicro_trrs_space();
        white_space();
    }
}

module upper_plate(hole_width, is_switch_plate = true)
{
    difference()
    {
        bottom_plate();
        alpha_holes(hole_width);
        thumb_hole(96.6, -98.7, 153.4, is_switch_plate, hole_width, is_goldberg);
        thumb_hole(113.7, -107.3, -26.6, is_switch_plate, hole_width, is_goldberg);
        if (is_switch_plate)
        {
            // promicro_trrs_space();
            white_space();
        }
        if (is_36)
        {
            inner_thumb_hole(hole_width);
        }
    }
}

if (is_case) {
    translate([ 150, 0, 0 ]) color([ 0.4, 0.3, 0.2 ])
    {
        // linear_extrude(height = bottom_thickness) { bottom_plate(); }
    }
    translate([ 150, 0, bottom_thickness ]) color([ 0.2, 0.3, 0.2 ])
    {
        linear_extrude(height = middle_thickness) { middle_plate(); }
    }
    translate([ 0, 0, 0 ]) color([ 0.3, 0.3, 0.3 ])
    {
        // linear_extrude(height = switch_thickness) { upper_plate(14, true); }
    }
    if (is_high) {
        difference()
        {
            translate([ 0, 0, switch_thickness ]) color([ 0.5, 0.5, 0.5 ])
            {
                linear_extrude(height = top_thickness)
                {
                    upper_plate(19.5, false);
                }
            }
            translate([ 0, 0, switch_thickness ]) linear_extrude(height = 3)
            {
                promicro_trrs_space();
            }
        }
    }
} else {
    // translate([ 150, 0, 3 ]) color([ 0.2, 0.2, 0.2 ]) bottom_plate();
    // translate([ 0, 140, 3 ]) color([ 0.2, 0.2, 0.2 ]) middle_plate();
    translate([ 0, 0, 6 ]) color([ 0.2, 0.2, 0.9 ]) upper_plate(14, true);
}
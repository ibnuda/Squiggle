include <common.scad>

module
something()
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
                linear_extrude(height = 24)
                    translate(tenting_screw_positions[i]) tenting_wing();
            }
        }

        for (i = [0:len(tenting_screw_positions) - 1]) {
            translate([ 0, 0, -1 ]) linear_extrude(height = 26)
                translate(tenting_screw_positions[i]) tenting_hole();
        }
    }
}

module
lower_part()
{
    difference()
    {
        intersection()
        {
            something();
            translate([ 150, -150, 5 ])
                cube(size = [ 400, 400, 10 ], center = true);
        }
        translate([ 0, 0, 3 ]) linear_extrude(height = 8) shape_of_pcb();
        translate([ 0, 0, 3 ]) linear_extrude(height = 8) promicro_trrs_space();
    }
}

module
upper_part()
{
    difference()
    {
        something();
        translate([ 150, -150, 0 ])
            cube(size = [ 400, 400, 20 ], center = true);
        translate([ 0, 0, 9 ]) linear_extrude(height = 5) alpha_holes(14);
        translate([ 0, 0, 9 ]) linear_extrude(height = 5)
            thumb_hole(96.6, -98.7, 153.4, true, 14);
        translate([ 0, 0, 9 ]) linear_extrude(height = 5)
            thumb_hole(113.7, -107.3, -26.6, true, 14);
        translate([ 0, 0, 9 ]) linear_extrude(height = 6) promicro_trrs_space();

        translate([ 0, 0, 13 ]) linear_extrude(height = 13) alpha_holes(19.5);
        translate([ 0, 0, 13 ]) linear_extrude(height = 13)
            thumb_hole(96.6, -98.7, 153.4, false, 19.5);
        translate([ 0, 0, 13 ]) linear_extrude(height = 13)
            thumb_hole(113.7, -107.3, -26.6, false, 19.5);
    }
}

lower_part();
translate([160, 0, -10]) {
    upper_part();
}
include <common.scad>

is_goldberg = true;

module
almost_flat_sphere()
{
    resize([ 15, 15, 5 ]) translate([ 0, 0, -75 ]) sphere(r = 75);
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
        translate([ 0, 0, 5 ]) linear_extrude(height = 4) shape_of_pcb();
        translate([ 0, 0, 5 ]) linear_extrude(height = 12) promicro_trrs_space();
        translate([ 0, 0, 9 ]) linear_extrude(height = 5) alpha_holes(14);
        translate([ 0, 0, 9 ]) linear_extrude(height = 5)
            thumb_hole(96.6, -98.7, 153.4, true, 14, is_goldberg);
        translate([ 0, 0, 9 ]) linear_extrude(height = 5)
            thumb_hole(113.7, -107.3, -26.6, true, 14, is_goldberg);
        translate([ 0, 0, 14 ]) linear_extrude(height = 23) alpha_holes(19.5);
        translate([ 0, 0, 14 ]) linear_extrude(height = 23)
            thumb_hole(96.6, -98.7, 153.4, false, 19.5, is_goldberg);
        translate([ 0, 0, 14 ]) linear_extrude(height = 23)
            thumb_hole(113.7, -107.3, -26.6, false, 19.5, is_goldberg);
    }
}

module
lower_part()
{
    difference()
    {
        intersection()
        {
            base_case();
            translate([ 150, -150, 5 ])
                cube(size = [ 400, 400, 10 ], center = true);
        }
        translate([ 0, 0, 5 ]) linear_extrude(height = 8) shape_of_pcb();
        translate([ 0, 0, 5 ]) linear_extrude(height = 8) promicro_trrs_space();
    }
}

module
upper_part()
{
    difference()
    {
        base_case();
        translate([ 150, -150, 0 ])
            cube(size = [ 400, 400, 20 ], center = true);
        // switch holes.
        translate([ 0, 0, 9 ]) linear_extrude(height = 14) alpha_holes(14);
        translate([ 0, 0, 9 ]) linear_extrude(height = 14)
            thumb_hole(96.6, -98.7, 153.4, true, 14, is_goldberg);
        translate([ 0, 0, 9 ]) linear_extrude(height = 14)
            thumb_hole(113.7, -107.3, -26.6, true, 14, is_goldberg);

        // spaces.
        translate([ 0, 0, 9 ]) linear_extrude(height = 6) promicro_trrs_space();

        // cap holes.
        translate([ 0, 0, 13 ]) linear_extrude(height = 23) alpha_holes(19.5);
        translate([ 0, 0, 13 ]) linear_extrude(height = 23)
            thumb_hole(96.6, -98.7, 153.4, false, 19.5, is_goldberg);
        translate([ 0, 0, 13 ]) linear_extrude(height = 23)
            thumb_hole(113.7, -107.3, -26.6, false, 19.5, is_goldberg);
    }
}

// lower_part();
// translate([ 160, 0, -10 ])
// translate([ 0, 0, 0.25 ])
//    upper_part();

intersection()
{
    case();
    translate([150, -150, 4]) {
        cube(size = [400, 400, 10 ], center = true);
    }
}

translate([200, 0, -9]) {
    intersection()
    {
        case();
        translate([150, -150, 17]) {
            cube(size=[400, 400, 16], center=true);
        }
    }
}

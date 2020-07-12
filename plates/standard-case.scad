$fn = 60;

bottom_thickness = 3;
middle_thickness = 7;
switch_thickness = 3;
top_thickness = 11;

is_36 = false;

is_case = true;

is_goldberg = false;

is_high = false;

module sector(radius, angles, fn = 60)
{
    r = radius / cos(180 / fn);
    step = -360 / fn;

    points = concat(
        [[ 0, 0 ]],
        [for (a = [angles[0]:step:angles[1] - 360])[r * cos(a), r * sin(a)]],
        [[r * cos(angles[1]), r * sin(angles[1])]]);

    difference()
    {
        circle(radius, $fn = fn);
        polygon(points);
    }
}

module arc(radius, angles, width = 1, fn = 60)
{
    difference()
    {
        sector(radius + width, angles, fn);
        sector(radius, angles, fn);
    }
}

module
single_screw_hole()
{
    circle(r = 1.2);
}

module
screw_holes()
{
    union()
    {
        translate([ 17.5, -26, 0 ]) single_screw_hole();
        translate([ 18.5, -88, 0 ]) single_screw_hole();
        translate([ 81.0, -116, 0 ]) single_screw_hole();
        translate([ 118.5, -132.5, 0 ]) single_screw_hole();
        translate([ 139, -88.5, 0 ]) single_screw_hole();
        translate([ 140, -56.5, 0 ]) single_screw_hole();
        translate([ 140, -20.5, 0 ]) single_screw_hole();
        translate([ 112.5, -17.2, 0 ]) single_screw_hole();
        translate([ 71, -8.6, 0 ]) single_screw_hole();
    }
}

tenting_positions =
    [ [ 129, -118.3 ], [ 40, -10 ], [ 106.5, -11.5 ], [ 13, -58 ], [ 145, -35 ] ];

module
tenting_wing()
{
    circle(r = 6.4);
}

module
tenting_hole()
{
    circle(r = 3.2);
}

module
promicro_trrs_space()
{
    union()
    {
        // promicro space.
        polygon(points = [
            [ 116, -12 ],
            [ 136, -12 ],
            [ 136, -56 ],
            [ 116, -56 ],
        ]);
        // trrs jack space.
        polygon(points = [
            [ 148, -75 ],
            [ 148, -59 ],
            [ 122, -59 ],
            [ 122, -75 ],
        ]);
    }
}

module
alpha_holes()
{
    for (j = [0:2]) {
        translate([ 0, (j * 19), 0 ])
        {
            for (i = [0:4]) {
                translate([ (i * 19), 0, 0 ])
                {
                    square(size = [ 14, 14 ], center = true);
                }
            }
        }
    }
}

module lone_hole(width = 14)
{
    translate([ 79.57, -90.06 ])
    {
        rotate([ 0, 0, 63.4 ])
        {
            square(size = [ width, width ], center = true);
        }
    }
}

stagger = [ -39, -27, -21, -28, -30 ];

module alpha_holes(width = 14)
{
    for (i = [0:2]) {
        for (j = [0:4]) {
            translate([ (30 + j * 19), (stagger[j] - i * 19) ])
                square(size = [ width, width ], center = true);
        }
    }
}

module
inner_room()
{
    angles = [ 63.7, 123.5 ];
    anglea = [ 15, 112 ];
    difference()
    {
        union()
        {
            translate([ 73, -108 ]) sector(98, angles, 72);
            polygon(points = [
                [ 19, -26.4 ],
                [ 19, -85 ],
                [ 117, -128 ],
                [ 138, -89 ],
                [ 138, -20 ],
                [ 116, -20 ],
            ]);
        }
        translate([ 36, -133 ]) sector(49, anglea, 75);
    }
}

module
bottom_plate()
{
    angle_upper = [ 63.7, 125.6 ];
    angle_lower = [ 15, 122 ];
    difference()
    {
        union()
        {
            translate([ 73, -108 ]) sector(105, angle_upper, 72);
            polygon(points = [
                [ 12, -22.8 ],
                [ 12, -89 ],
                [ 118.5, -141.5 ],
                [ 146, -89 ],
                [ 146, -14 ],
                [ 116, -14 ],
            ]);
            for (i = [0:len(tenting_positions) - 1]) {
                translate(tenting_positions[i]) tenting_wing();
            }
        }
        translate([ 36, -133 ]) sector(41.5, angle_lower, 75);
        // screw_holes();
        for (i = [0:len(tenting_positions) - 1]) {
            translate(tenting_positions[i]) tenting_hole();
        }
    }
}

module
thumb_imported_from_file()
{
    translate([ 7, -6.3, 0 ])
    {
        rotate([ 0, 0, -30 ]) { import("2u-cutout.dxf"); }
    }
}

module
thumb_two_u()
{
    union()
    {
        translate([ 0, 9.5, 0 ]) { square(size = [ 14, 14 ], center = true); }
        translate([ 0, -9.5, 0 ]) { square(size = [ 14, 14 ], center = true); }
    }
}
module upper_plate(hole_width, is_switch_plate = false)
{
    difference()
    {
        bottom_plate();
        translate([ 96.6, -98.7, 0 ])
        {
            rotate([ 0, 0, 153.4 ])
            {
                if (is_switch_plate) {
                    if (is_goldberg) {
                        thumb_two_u();
                    } else {
                        thumb_imported_from_file();
                    }
                } else {
                    square(size = [ hole_width, hole_width * 2 ],
                           center = true);
                };
            }
        }
        translate([ 113.7, -107.3, 0 ])
        {
            rotate([ 0, 0, -26.6 ])
            {
                if (is_switch_plate) {
                    if (is_goldberg) {
                        thumb_two_u();
                    } else {
                        thumb_imported_from_file();
                    }
                } else {
                    square(size = [ hole_width, hole_width * 2 ],
                           center = true);
                };
            }
        }
        alpha_holes(hole_width);
        if (is_36) {
            lone_hole(hole_width);
        }
        if (is_switch_plate) {
            promicro_trrs_space();
        }
    }
}

module
middle_plate()
{
    difference()
    {
        bottom_plate();
        inner_room();
        promicro_trrs_space();
    }
}

if (is_case) {
    translate([ 150, 0, 0 ]) color([ 0.4, 0.3, 0.2 ])
    {
        linear_extrude(height = bottom_thickness) { bottom_plate(); }
    }
    translate([ 150, 0, bottom_thickness ]) color([ 0.2, 0.3, 0.2 ])
    {
        linear_extrude(height = middle_thickness) { middle_plate(); }
    }
    translate([ 0, 0, 0 ]) color([ 0.3, 0.3, 0.3 ])
    {
        linear_extrude(height = switch_thickness) { upper_plate(14, true); }
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
    translate([ 140, 0, 3 ]) color([ 0.2, 0.2, 0.2 ]) bottom_plate();
    translate([ 0, 140, 3 ]) color([ 0.2, 0.2, 0.2 ]) middle_plate();
    translate([ 0, 0, 6 ]) color([ 0.2, 0.2, 0.9 ]) upper_plate(14, true);
}
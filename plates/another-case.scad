$fn = 60;

bottom_thickness = 3;
middle_thickness = 7;
switch_thickness = 3;
top_thickness = 11;

use_tenting_screws = true;

is_36 = false;

is_case = true;

is_goldberg = false;

is_high = true;

tenting_screw_positions =
    [ [ 129, -118.3 ], [ 40, -10 ], [ 106.5, -10 ], [ 13, -58 ], [ 144, -35 ] ];

tightening_screw_positions = [
    [ 17.5, -26, 0 ],
    [ 18.5, -88, 0 ],
    [ 81.0, -116, 0 ],
    [ 118.5, -132.5, 0 ],
    [ 139, -88.5, 0 ],
    [ 140, -56.5, 0 ],
    [ 140, -20.5, 0 ],
    [ 112.5, -17.2, 0 ],
    [ 71, -8.6, 0 ]
];

stagger = [ -39, -27, -21, -28, -30 ];

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
tenting_wing()
{
    circle(r = 7.5);
}

module
tenting_hole()
{
    circle(r = 3.2);
}

module
tightening_hole()
{
    circle(r = 1.2);
}

module
promicro_trrs_space()
{
    union()
    {
        // promicro space.
        polygon(points = [
            [ 116, -8 ],
            [ 136, -8 ],
            [ 136, -56 ],
            [ 116, -56 ],
        ]);
        // trrs jack space.
        polygon(points = [
            [ 150, -75 ],
            [ 150, -59 ],
            [ 122, -59 ],
            [ 122, -75 ],
        ]);
    }
}

module alpha_holes(width = 14)
{
    for (j = [0:2]) {
        for (i = [0:4]) {
            translate([ (30 + i * 19), (stagger[i] - j * 19), 0 ])
            {
                square(size = [ width, width ], center = true);
            }
        }
    }
}

module
inner_thumb_hole(width = 14)
{
    translate([ 79.57, -90.06 ])
    {
        rotate([ 0, 0, 63.4 ])
        {
            square(size = [ width, width ], center = true);
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

module thumb_hole(x, y, rotation, is_switch_plate = true, hole_width = 14)
{
    translate([ x, y, 0 ])
    {
        rotate([ 0, 0, rotation ])
        {
            if (is_switch_plate) {
                if (is_goldberg) {
                    thumb_two_u();
                } else {
                    thumb_imported_from_file();
                }
            } else {
                square(size = [ hole_width, hole_width * 2 ], center = true);
            };
        }
    }
}

module
shape_of_pcb()
{
    upper_angles = [ 63.7, 123.5 ];
    lower_angles = [ 15, 112 ];
    difference()
    {
        union()
        {
            translate([ 73, -108 ]) sector(98, upper_angles, 72);
            polygon(points = [
                [ 19, -26.4 ],
                [ 19, -85 ],
                [ 117, -128 ],
                [ 138, -89 ],
                [ 138, -20 ],
                [ 116, -20 ],
            ]);
        }
        translate([ 36, -133 ]) sector(49, lower_angles, 75);
    }
}

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
        promicro_trrs_space();
    }
}

module upper_plate(hole_width, is_switch_plate = true)
{
    difference()
    {
        bottom_plate();
        alpha_holes(hole_width);
        thumb_hole(96.6, -98.7, 153.4, is_switch_plate, hole_width);
        thumb_hole(113.7, -107.3, -26.6, is_switch_plate, hole_width);
        if (is_switch_plate)
        {
            promicro_trrs_space();
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
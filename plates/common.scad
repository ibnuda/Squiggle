
tenting_screw_positions =
    [ [ 129, -118.3 ], [ 40, -10 ], [ 106.5, -10 ], [ 13, -58 ]/*, [ 144, -35 ]*/ ];

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
white_space()
{
    polygon(points=[
        [ 116, -5 ],
        [ 116, -77.5 ],
        [ 150, -94.5 ],
        [ 150, -10 ]
    ]);
}

module
promicro_space()
{
    // promicro space.
    polygon(points = [
        [ 116, -5 ],
        [ 136, -5 ],
        [ 136, -56 ],
        [ 116, -56 ],
    ]);
}

module
trrs_space()
{
    polygon(points = [
        [ 155, -75 ],
        [ 155, -59 ],
        [ 122, -59 ],
        [ 122, -75 ],
    ]);

}

module
idc_space()
{
    polygon(points = [
        [ 122, -59 ],
        [ 133, -59 ],
        [ 133, -81 ],
        [ 122, -81 ],
    ]);
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

module thumb_hole(x, y, rotation, is_switch_plate = true, hole_width = 14, is_goldberg = false)
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

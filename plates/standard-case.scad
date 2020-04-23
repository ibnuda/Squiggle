$fn = 16;

bottom_thickness = 3;
middle_thickness = 5;
switch_thickness = 5;

use_screw_tenting = false;

module sector(radius, angles, fn = 24) {
    r = radius / cos(180 / fn);
    step = -360 / fn;

    points = concat([[0, 0]],
        [for(a = [angles[0] : step : angles[1] - 360]) 
            [r * cos(a), r * sin(a)]
        ],
        [[r * cos(angles[1]), r * sin(angles[1])]]
    );

    difference() {
        circle(radius, $fn = fn);
        polygon(points);
    }
}

module arc(radius, angles, width = 1, fn = 24) {
    difference() {
        sector(radius + width, angles, fn);
        sector(radius, angles, fn);
    }
}

module single_screw_hole() {
    circle(r=1.2);
}

module screw_holes() {
    union() {
        translate([17.5,  -26,    0]) single_screw_hole();
        translate([18.5,  -88,    0]) single_screw_hole();
        translate([81.0,  -116,   0]) single_screw_hole();
        translate([118.5, -132.5, 0]) single_screw_hole();
        translate([139,   -88.5,  0]) single_screw_hole();
        translate([140,   -56.5,  0]) single_screw_hole();
        translate([140,   -20.5,  0]) single_screw_hole();
        translate([112.5, -17.2,  0]) single_screw_hole();
        translate([71,    -8.6,   0]) single_screw_hole();
    }
}

tenting_positions = [[129, -118.3], [40, -11], [106.5, -11.5], [15, -58]];
module tenting_wing() {
    circle(r=6);
}

module tenting_hole() {
    circle(r=3.1);
}

module alpha_holes() {
    for (j=[0:2]) {
        translate([0, (j * 19), 0]) {
            for (i=[0:4]) {
                translate([(i * 19), 0, 0]) {
                    square(size=[14, 14], center=true);
                }
            }
        }
    }
}

module thumb_hole() {
    polygon(
        points=[
            [7,       7],
            [7,       5],
            [8.5,     5],
            [8.5,     8],
            [15.5,    8],
            [15.5,    2.3],
            [16.25,   2.3],
            [16.25,  -1],
            [15.5,   -1],
            [15.5,   -7],
            [14.5,   -7],
            [14.5,   -8],
            [9,      -8],
            [9,      -7],
            [8.5,    -7],
            [8.5,    -6],
            [7,      -6],
            [7,      -7],
            [-7,     -7],
            [-7,     -6],
            [-8.5,   -6],
            [-8.5,   -7],
            [-9,     -7],
            [-9,     -8],
            [-14.5,  -8],
            [-14.5,  -7],
            [-15.5,  -7],
            [-15.5,  -1],
            [-16.25, -1],
            [-16.25,  2.3],
            [-15.5,   2.3],
            [-15.5,   8],
            [-8.5,    8],
            [-8.5,    5],
            [-7,      5],
            [-7,      7],
        ]
    );
    
}

module plain_thumb_hole() {
    polygon(
        points=[
            [-17,   11],
            [-7,    11],
            [-7,     7],
            [7,      7],
            [7,     11],
            [17,    11],
            [17,   -8.7],
            [8.5,  -8.7],
            [8.5,  -7],
            [-8.5, -7],
            [-8.5, -8.7],
            [-17,  -8.7],
        ]
    );
    
}

stagger = [-39, -27, -21, -28, -30];

module alpha_holes() {
    for (i=[0:2]) {
        for (j=[0:4]) {
            translate([(30 + j * 19), (stagger[j] - i * 19)])
            square(size=[14, 14], center=true);
        }
    }
}

module inner_room() {
    angles = [63.7, 123.5];
    anglea = [15, 112];
    difference() {
        union() {
            translate([73, -108]) sector(98, angles, 72);
            polygon(
                points=[
                    [19,   -26.4],
                    [19,   -85],
                    [117,  -128],
                    [138,  -89],
                    [138,  -20],
                    [116,  -20],
                ]
            );
        }
        translate([36, -133]) sector(49, anglea, 75);
    }
}

module bottom_plate() {
    angles = [63.7, 124.8];
    anglea = [15, 112];
    difference() {
        union() {
            translate([73, -108]) sector(102, angles, 72);
            polygon(
                points=[
                    [15,    -24.8],
                    [15,    -89],
                    [119.7, -137.3],
                    [143,   -89],
                    [143,   -16],
                    [116,   -16],
                ]
            );
            for (i=[0:3]) {
                translate(tenting_positions[i]) tenting_wing();
            }
        }
        translate([36, -133]) sector(45, anglea, 75);
        //screw_holes();
        for (i=[0:3]) {
            translate(tenting_positions[i]) tenting_hole();
        }
    }
}

module thumb_imported_from_file() {
    translate([7, -6.3, 0]) {
        rotate([0, 0, -30]) {
            import("2u-cutout.dxf");
        }
    }
}

module switch_plate() {
    difference() {
        bottom_plate();
        alpha_holes();
        translate([96.6, -98.7, 0]) {
            rotate([0, 0, 153.4]) {
                thumb_imported_from_file();
            }
        }
        translate([113.7, -107.3, 0]) {
            rotate([0, 0, -26.6]) {
                thumb_imported_from_file();
            }
        }
        polygon(
            points= [
                [145,   -15],
                [116,   -15],
                [116,   -77],
                [145,   -91],
            ]
        );
    }
}

module middle_plate() {
    difference() {
        bottom_plate();
        inner_room();
        polygon(
            points= [
                [145,   -15],
                [116,   -15],
                [116,   -77],
                [145,   -91],
            ]
        );
        polygon(
            points= [
                [122.5,   -61],
                [122.5,   -73.5],
                [149,     -73.5],
                [149,     -61],
            ]
        );
    }
}

//translate([140, 0, 3]) color([0.2, 0.2, 0.2]) bottom_plate();
//translate([0, 140, 3]) color([0.2, 0.2, 0.2]) middle_plate();
//translate([0, 0, 6]) color([0.2, 0.2, 0.9]) switch_plate();

translate([140, 0, 0]) color([0.4, 0.3, 0.2]) linear_extrude(height = 3) bottom_plate();
translate([0, 0, 3])   color([0.2, 0.3, 0.2]) linear_extrude(height = 6) middle_plate();
translate([0, 0, 0])   color([0.2, 0.3, 0.9]) linear_extrude(height = 3) switch_plate();
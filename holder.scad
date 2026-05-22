element_diameter = 8; // [8:8 mm, 10:10 mm, 12:12 mm]
/* [Hidden] */
revision = "source";

module __Customizer_Limit__ () {}  // Hide following assignments from Customizer.

$fn=50;

width = 60;
height = 55;
holder_size = 2 + element_diameter + 2;
boom_size = 20;
base_thickness = 4;
radiator_distance = 10;
h = element_diameter + 10;

difference() {
    translate([-16, 3-h/2, -15]) cube([32, h, 50]);
    translate([-1-16, 0, element_diameter/2+10+5]) rotate([0, 90, 0]) cylinder(1+32+1, d=element_diameter+0.2);
    translate([-2, 0, 0]) cube([boom_size+0.1, 1000, boom_size+0.1], center=true);
    translate([12, h/2-1, 0]) cylinder(100, d=3.2, center=true);
    translate([12, h/2-1, -16]) cylinder(1+2.45, d=6.5, $fn=6);
    translate([0, -25, -.5]) cube([50, 50, 1]);
    translate([-25, 0, element_diameter/2+10+4.5]) cube([50, 50, 1]);
    translate([0, -1.5, -15+.5]) rotate([180, 0, 0]) linear_extrude(height=1) {
        text("HA5LA", halign="center", valign="center", font="Liberation Mono", size=7);
        translate([0, -5, 0]) text(str("rev:", revision, " d:", element_diameter, "mm"), halign="center", valign="center", font="Liberation Mono", size=2);
    }
}

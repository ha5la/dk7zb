element_diameter = 8; // [8:8 mm, 10:10 mm, 12:12 mm]
boom_element_center_distance = 10;
/* [Hidden] */
revision = "source";

module __Customizer_Limit__ () {}  // Hide following assignments from Customizer.

$fn=50;

boom_size = 20;
h = element_diameter + 11;

difference() {
    translate([-16, 2-h/2, -15]) cube([32, h, boom_size+boom_element_center_distance+element_diameter+3]);
    translate([-1-16, 0, element_diameter/2+boom_element_center_distance+6]) rotate([0, 90, 0]) cylinder(1+32+1, d=element_diameter+0.3);
    translate([-2, 0, 0]) cube([boom_size+0.2, 1000, boom_size+0.2], center=true);
    translate([12, h/2-1, 0]) cylinder(100, d=3.3, center=true);
    translate([12, h/2-1, -16]) cylinder(1+2.45, d=6.6, $fn=6);
    translate([-2, 11.5, 0]) cylinder(100, d=1, center=true);
    translate([0, -25, -.5]) cube([50, 50, 1]);
    translate([-25, 0, element_diameter/2+boom_element_center_distance+5.5]) cube([50, 50, 1]);
    translate([0, -1.5, -15+.5]) rotate([180, 0, 0]) linear_extrude(height=1) {
        text("HA5LA", halign="center", valign="center", font="Liberation Mono", size=7);
        translate([-14, -5, 0]) text(str("rev:", revision, " d:", element_diameter, "mm"), halign="left", valign="center", font="Liberation Mono", size=2);
        translate([-14, -8, 0]) text(str("becd:", boom_element_center_distance, "mm"), halign="left", valign="center", font="Liberation Mono", size=2);
    }
}

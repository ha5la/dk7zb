element_diameter = 8; // [8:8 mm, 10:10 mm, 12:12 mm]
boom_element_center_distance = 10;
/* [Hidden] */
revision = "source";

module __Customizer_Limit__ () {}  // Hide following assignments from Customizer.

$fn=50;

boom_size = 20;
h = element_diameter + 8;

difference() {
    translate([-14, 2-h/2, -15]) cube([30, h, boom_size+boom_element_center_distance+element_diameter+3]);
    translate([-1-14, 0, element_diameter/2+boom_element_center_distance+6]) rotate([0, 90, 0]) cylinder(1+30+1, d=element_diameter+0.3);
    cube([boom_size+0.1, 1000, boom_size+0.1], center=true);
    translate([12.5, h/2-1.5, 0]) cylinder(100, d=3.3, center=true);
    translate([12.5, h/2-1.5, -16]) cylinder(1+2.45, d=6.6, $fn=6);
    translate([0, 11.5, element_diameter/2+boom_element_center_distance+6]) rotate([90, 0, 0]) cylinder(100, d=2, center=true);
    rotate([0, 90, 0]) cylinder(100, d=2, center=true);
    translate([0, -25, -.5]) cube([50, 50, 1]);
    translate([-25, 0, element_diameter/2+boom_element_center_distance+5.5]) cube([50, 50, 1]);
    translate([.5, -1.5, -15+.5]) rotate([180, 0, 0]) linear_extrude(height=1) {
        text("HA5LA", halign="center", valign="center", font="Liberation Mono", size=7);
        translate([-14, -4.5, 0]) text(str("rev:", revision), halign="left", valign="center", font="Liberation Mono", size=2);
        translate([-14, -7, 0]) text(str("d:", element_diameter, "mm"), halign="left", valign="center", font="Liberation Mono", size=2);
        translate([-14, -9.5, 0]) text(str("becd:", boom_element_center_distance, "mm"), halign="left", valign="center", font="Liberation Mono", size=2);
    }
}

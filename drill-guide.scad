element_diameter = 12; // [8:8 mm, 10:10 mm, 12:12 mm]
/* [Hidden] */
revision = "source";

module __Customizer_Limit__ () {}  // Hide following assignments from Customizer.

$fn=50;

width = 60;
height = 55;
holder_size = 2 + element_diameter + 2;
base_thickness = 4;
radiator_distance = 10;

difference() {
    translate([-30, -holder_size / 2 - 4, -10]) cube([60, holder_size+2*4, 50]);
    translate([-10, -holder_size / 2 - 5, -10-1]) cube([41, holder_size+2*5, 11]);
    translate([0, -holder_size / 2-0.05, -holder_size / 2-0.05]) cube([width, holder_size+0.1, holder_size+0.1]);
    translate([-10, -holder_size / 2 - 5, -1]) cube([11, holder_size+2*5, 1+30]);
    rotate([0, -90, 0]) cylinder(40, d=element_diameter+0.1);
    translate([-18, -holder_size/2-3.5, 16]) rotate([90, 90, 0]) linear_extrude(height=1) {
        text("HA5LA", halign="center", valign="center", font="Liberation Mono");
        translate([0, -7, 0]) text(str("rev:", revision, " d:", element_diameter, "mm"), halign="center", valign="center", font="Liberation Mono", size=2);
    }
}

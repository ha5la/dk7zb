$fn=50;

width = 60;
height = 55;
holder_size = 16;
base_thickness = 4;
radiator_distance = 10;
revision = "abcdefg";

module radiator(dir) {
    translate([0, 0, holder_size / 2]) rotate([0, dir * 90, 0]) translate([0, 0, radiator_distance / 2]) difference() {
        cylinder(width / 2, d=12.1);
        cylinder(width / 2, d=9.4);
    }
    translate([dir * 8, 0, -1]) cylinder(1+holder_size+1, d=3.2);
    translate([dir * 8, 0, -1]) cylinder(1+2.45, d=6.5, $fn=6);
}

difference() {
    translate([-width / 2, -holder_size / 2, 0]) {
        cube([width, holder_size, holder_size]);
        cube([width, height, base_thickness]);
    }
    translate([0, 12 / 2 + (height - 12) * 1 / 5, -1]) cylinder(1 + base_thickness + 1, d=3.2);
    translate([0, 12 / 2 + (height - 12) * 4 / 5, -1]) cylinder(1 + base_thickness + 1, d=3.2);
    translate([0, 0, -1]) cylinder(1 + holder_size + 1, d=3.2);
    radiator(+1);
    radiator(-1);
    translate([0, 0, 13]) cylinder(5, d1=24, d2=32);
    translate([0, 25, 3.5]) rotate([0, 0, 180]) linear_extrude(height=1) {
        text("HA5LA", halign="center", valign="center", font="Liberation Mono");
        translate([0, -9, 0]) text(revision, halign="center", valign="center", font="Liberation Mono", size=2);
    }
}

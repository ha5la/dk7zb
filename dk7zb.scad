$fn=50;

width = 55;
height = 55;
holder_size = 12;
base_thickness = 4;
radiator_distance = 10;

module radiator(dir) {
    translate([0, 0, holder_size / 2]) rotate([0, dir * 90, 0]) translate([0, 0, radiator_distance / 2]) difference() {
        cylinder(width / 2, d=8.1);
        cylinder(width / 2, d=5.4);
    }
    translate([dir * 12, 0, -1]) cylinder(14, d=3.2);
    translate([dir * 12, 0, -1]) cylinder(1+2.45, d=6.4, $fn=6);
}

difference() {
    translate([-width / 2, -holder_size / 2, 0]) {
        cube([width, holder_size, holder_size]);
        cube([width, height, base_thickness]);
    }
    translate([0, holder_size / 2 + (height - holder_size) * 1 / 5, -1]) cylinder(1 + base_thickness + 1, d=3.2);
    translate([0, holder_size / 2 + (height - holder_size) * 4 / 5, -1]) cylinder(1 + base_thickness + 1, d=3.2);
    translate([0, 0, -1]) cylinder(1 + holder_size + 1, d=3.2);
    radiator(+1);
    radiator(-1);
}

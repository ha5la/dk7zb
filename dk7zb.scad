$fn=50;

difference() {
    union() {
        cube([55, 6+6, 12]);
        cube([55, 4, 50]);
    }
    rotate([270, 0, 0]) translate([27.5, -20, -1]) cylinder(6, d=4.1);
    rotate([270, 0, 0]) translate([27.5, -45, -1]) cylinder(6, d=4.1);
    translate([-1, 6, 6]) rotate([0, 90, 0]) {
        difference() {
            cylinder(23, d=8.1);
            cylinder(23, d=5.4);
        }
    }
    translate([33, 6, 6]) rotate([0, 90, 0]) {
        difference() {
            cylinder(23, d=8.1);
            cylinder(23, d=5.4);
        }
    }
    rotate([270, 0, 0]) translate([27.5-9, -6, -1]) union() {
        cylinder(23, d=3.1);
        cylinder(2, d1=5.8, d2=3.1);
    }
    rotate([270, 0, 0]) translate([27.5+9, -6, -1]) union() {
        cylinder(23, d=3.1);
        cylinder(2, d1=5.8, d2=3.1);
    }
}
$fn=50;

width = 60;
height = 55;
holder_size = 16;
base_thickness = 4;
radiator_distance = 10;

difference() {
    translate([-30, -holder_size / 2 - 4, -10]) cube([60, holder_size+2*4, 50]);
    translate([-10, -holder_size / 2 - 5, -10-1]) cube([41, holder_size+2*5, 11]);
    translate([0, -holder_size / 2-0.05, -holder_size / 2-0.05]) cube([width, holder_size+0.1, holder_size+0.1]);
    translate([-10, -holder_size / 2 - 5, -1]) cube([20, holder_size+2*5, 1+30]);
    rotate([0, -90, 0]) cylinder(40, d=12.1);
}

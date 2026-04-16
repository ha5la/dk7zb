$fn=50;

width = 55;
height = 55;
holder_size = 12;
base_thickness = 4;
radiator_distance = 10;

difference() {
    translate([-30, -holder_size / 2 - 4, 0]) cube([60, holder_size+2*4, 40]);
    translate([0, -holder_size / 2-0.05, -holder_size / 2-0.05]) cube([width, holder_size+0.1, holder_size+0.1]);
    translate([-10, -holder_size / 2 - 5, -1]) cube([20, holder_size+2*5, 1+30]);
    rotate([0, -90, 0]) cylinder(40, d=8.1);
}

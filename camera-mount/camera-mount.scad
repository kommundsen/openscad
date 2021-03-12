$fn = 64;
union() {
    difference() {
        cube(30);
        translate([4, 4, 0])
            cube(30);
        translate([0, 15, 15])
            rotate([0, 90, 0])
                cylinder(4, 2, 2);
        
        translate([15, 0, 15])
            rotate([0, 90, 90])
                cylinder(4, 2, 2);

    }

    difference() {
        rotate([0, 0, 45])
            translate([-10, -10, 24])
                difference() {
                    union() {
                        difference() {
                            cube([30, 20, 6]);
                            cube([3, 20, 6]);
                        }
                        translate([3, 0, 3]) {
                            rotate([-90, 0, 0]) {
                                cylinder(20, 3, 3);
                            }
                        }
                    }
                    translate([0, 7, 0]) {
                        cube([10, 6, 6]);
                    }
                    translate([3, 20, 3]) {
                        rotate([90, 0, 0]) {
                            cylinder(20, 1.5, 1.5);
                        }
                    }
                }
        translate([4, 4, 0])
            cube(40);
    }
}


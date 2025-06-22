sfn=30;

color("black", 1.0) {
    difference() {
        cylinder(r=5, h=2, $fn=sfn, center=true);
        cylinder(r=4.5, h=5, $fn=sfn, center=true);
    }

    for(i = [-1, 1]) {
        translate([1.5*i,1.5,0])cylinder(r=0.5,h=2, $fn=sfn, center=true);
    }


    translate([0,0.7,0]) difference() {
        cylinder(r=3, h=2, $fn=sfn, center=true);
        cylinder(r=2.5, h=5, $fn=sfn, center=true);
        translate([0,4,0]) cube([10,10,5], center=true);
    }
    for(i=[0:6]) {
        rotate([0,0,i*60 + 30]) 
            translate([0,5.35, 0])
                cube([1.12, 1.75, 1], center=true);
        rotate([0,0,i*60]) 
            translate([0,5.1,0])
                cube([1.12, 1.25, 1], center=true);
    }
} 
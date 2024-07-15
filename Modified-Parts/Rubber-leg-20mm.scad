// A leg for Rebelix printer
// Printe from a flexible material.
// Fiberology FiberFlex 40D is a good choice.
// Flexifill 98 might do too.
// (C) 2024 Lubomir Rintel

$fn=50;

difference() {
    
    union() {
        cylinder(20/2,20/2,20/2);
        sphere(20/2);
    }
    
    translate([-50,-50,0+1])
        cube([100,100,100]);
        
    translate([0,0,-50])
        cylinder(100,3.2/2,3.2/2);
    
    translate([0,0,-100-4])
        cylinder(100,6/2,6/2);
    
}
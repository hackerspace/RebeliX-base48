// (c) 2024 Lubomir Rintel
// Distributed under GPLv2+

zz=3;
rr=3;

$fn=30;

module cs(x,y,z,r=3)
{
    translate([-x/2,-y/2,0]) cylinder(z,r,r);
    translate([x/2,-y/2,0]) cylinder(z,r,r);    
    translate([-x/2,y/2,0]) cylinder(z,r,r);
    translate([x/2,y/2,0]) cylinder(z,r,r);    
}

module rib(n=0,zz=3,l=36)
{
    rotate([0,0,n*360/5])
        translate([-l/2,-6.66,0])
        cube([l,1.3,zz]);
}

difference() {
    hull()
        cs(40-rr*2,40-rr*2,zz,r=rr);
    translate([0,0,-10])
        cs(32,32,20,r=1.6);
    translate([0,0,-10])
        cylinder(20,17,17);
    translate([0,0,1.5])
        cs(32,32,20,r=3);    
}

for (i=[0:4]) rib(i, zz);
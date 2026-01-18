d = 4;
h=8.5;
b=22;
l=15;
cc=7;
OF = 7;
FNN = 60;
    union() {
difference() {
    cube([l,b,h],center=false);
        union() {
            translate([4,7.5,0]) cylinder(h=40, r=d/2, $fn=FNN, center=true);
            translate([4+cc,7.5,0]) cylinder(h=40, r=d/2, $fn=FNN, center=true);

            translate([4,7.5,h-1.5]) cylinder(h=3, r=5.5/2, $fn=FNN, center=true);
            translate([4+cc,7.5,h-1.5]) cylinder(h=3, r=5.5/2, $fn=FNN, center=true);        

         
            translate([4+cc,7.5+OF,0]) cylinder(h=40, r=3/2, $fn=FNN, center=true);
        }
    }
    translate([4,7.5+OF,h+0.5]) cylinder(h=2, r=3/2, $fn=FNN, center=true);
}
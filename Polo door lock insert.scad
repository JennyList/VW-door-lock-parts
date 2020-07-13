//Insert from a 1990s - 2000s era VW door lock.
//As found in Polo 6Ns and contemporary cars.

difference(){
    cylinder(11,8.1,8.1); //outer cylinder
    cylinder(2.3,4.9,4.9); //hole in bottom flange for lock shaft
    translate([0,0,2.3]) cylinder(8.7,6.7,6.7); //hollow out leaving bottom flange
    translate([4.3,-8.1,2.3]) cube([4.3,16.2,8.7]); //large cut-out
    translate([-6,-8.1,6]) cube([6,16.2,5]); //cross-cut to make the two lugs
    translate([-8,-8.1,6]) cube([2,5.1,5]); //square off one side of the middle lug
    translate([-8,3,6]) cube([2,5.1,5]); //square off the other side of the middle lug
    rotate([0,0,-20]) translate([3,-5,2.3]) cube([5,2,8.7]); //shave off small lug corner 1
    mirror([0,1,0]) rotate([0,0,-20]) translate([3,-5,2.3]) cube([5,2,8.7]); //shave off small lug corner 2
    difference(){ //slot in underside
        cylinder(1.9,7.5,7.5);
        translate([-7.5,-7.5,0]) cube([15,5,1.9]);
        mirror([0,1,0]) translate([-7.5,-7.5,0]) cube([15,5,1.9]);
    }  
}

translate([-9,-1.5,2.3]) cube([1.2,3,2]); // rear protrusion
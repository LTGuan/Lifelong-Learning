hull(){
    a = 0.001;
    cube(a, center=true);
    translate([10,10,10])
    cube(size=a,center=true);
    translate([-10,-10,10])
    cube(size=a,center=true);
    translate([10,-10,10])
    cube(size=a,center=true);
    translate([-10,10,10])
    cube(size=a,center=true);
    translate([0,0,20])
    cube(size=a,center=true);
    
}


//hull() {
//    translate([15,10,10]) circle(10);
//    circle(10);
//}

// $fn=50;
// 
//minkowski() {
//	cube([10, 10, 10]);
//    rotate([90,0,0]){
//	cylinder(1);}
//}
//
//echo("--- x aixe 90deg ---");

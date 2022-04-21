CenterBearingSize=22;
ArmDistance=50;

difference(){
hull(){
cylinder(r=CenterBearingSize/2+5, h=8,center=true);
translate([ArmDistance,0,0])
cylinder(r=CenterBearingSize/2, h=8,center=true);
}
cylinder(r=CenterBearingSize/2, h=11, center=true);
}

scale([2,1,1]){
translate([ArmDistance/3,ArmDistance/2,0])
cylinder(r=ArmDistance/3, h=20, center=true);
translate([ArmDistance/3,-ArmDistance/2,0])
cylinder(r=ArmDistance/3, h=20, center=true);
}
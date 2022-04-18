sphere(r=10);
translate([33,0,0])
color("pink")
resize(newsize=[30,60,10]) 
sphere(r=1,$fn=100)
//cube(1,center=true)
;
translate([50,50,0])
for(i=[0:36])
{ for(j=[0:36])
{ color([0.5+sin(10*i)/2,0.5+sin(10*j)/2,0.5+sin(10*(i+j))/2])
translate([i,j,0])
cube(size=[1,1,11+10*cos(10*i)*sin(10*j)]);
}
}
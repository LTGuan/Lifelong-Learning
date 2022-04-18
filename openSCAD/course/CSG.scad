translate([-24,0,0]) {
    union(){
        cube(15,center=true);
        sphere(10);
    }
}

intersection(){
    cube(15, center=true);
}

translate([24,0,0]){
    difference(){
        cube(15,center=true);
        sphere(10);
    }
}

translate([24,24,0]){
    difference(){
        sphere(10);
        cube(15,center=true);
    }
}

translate([48,0,0]){
    sphere(10, $fn=100);
}

translate([0,-24,0]){
    color([0,0,1])
    cylinder(h=40,r=10,center=true);
}
translate([100,0,0]){
    polyhedron(
        points=[[10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0],[0,0,50]],
        triangles=[[0,1,4],[1,2,4],[2,3,4],[3,0,4],[1,0,3],[2,1,3]]
    );
}
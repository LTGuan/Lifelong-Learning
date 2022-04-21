step=0.1;

to=10;

//function f(p,q) = (p*p + q*q)/20;
function f(p,q) = 2*cos((p*p + q*q)*5);

extra_height = 0.05;

for(a=[-10:step:10], b=[-10:step:10]){
    x = a*to;
    y = b*to;
    
    //x,y plus step
    xps = (a+step)*to;
    yps = (b+step)*to;
    s = 0.05;
    
//    //lower triangle
//    hull(){
//        //(x,y)
//        translate([x,y,f(x,y)])
//        cube(size=s, center=true);
//        
//        //(x,y+step)
//        translate([x,yps,f(x,yps)])
//        cube(size=s, center=true);
//        
//        //(x+step,y)
//        translate([xps,y,f(xps,y)])
//        cube(size=s, center=true);
//        
//    }
//    
//    //upper triangle
//    hull(){
//        //(x+step,y+step)
//        translate([xps,yps,f(xps,yps)+extra_height])
//        cube(size=s, center=true);
//        
//        //(x,y+step)
//        translate([x,yps,f(x,yps)+extra_height])
//        cube(size=s, center=true);
//        
//        //(x+step,y)
//        translate([xps,y,f(xps,y)+extra_height])
//        cube(size=s, center=true);
//    }
    
    //triangle
    hull(){
        //(x,y)
        translate([x,y,f(x,y)])
        cube(size=s, center=true);
        
        //(x,y+step)
        translate([x,yps,f(x,yps)])
        cube(size=s, center=true);
        
        //(x+step,y)
        translate([xps,y,f(xps,y)])
        cube(size=s, center=true);

        //(x+step,y+step)
        translate([xps,yps,f(xps,yps)+extra_height])
        cube(size=s, center=true);
        
        //(x,y+step)
        translate([x,yps,f(x,yps)+extra_height])
        cube(size=s, center=true);
        
        //(x+step,y)
        translate([xps,y,f(xps,y)+extra_height])
        cube(size=s, center=true);
    }
}


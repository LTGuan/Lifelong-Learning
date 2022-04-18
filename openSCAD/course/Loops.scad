


//difference()
//{
//    slot(20, 100, 5);
////    slot(15, 100, 6);
//    for(x=[-50:20:50])
//        translate([x,0,0]) cylinder(d=10, h=10);
//}

//module slot(w, l, h)
//{
//    hull()
//    {
//        for(x=[-l/2,l/2])
//            translate([x,0,0])
//            cylinder(d=w,h=h);
//    }
//}

intersection_for (n=[0:60:360])
{
//    color("red")
    rotate(n)
        translate([10,0,0])
            sphere(20);
}


//translate([20,0,0])cylinder(d=10, h= 20, $fn=6);
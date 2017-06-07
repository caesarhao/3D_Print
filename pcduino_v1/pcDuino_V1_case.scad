/*
* pcduino v1 case
* Dodoqia
* 2017.06.03
*/
// pcduino model for checking the case.
//import("pcDuino_V1_model.stl");
// creat global box
brd_len = 125;
brd_wid = 52.8;
pcb_tick = 2.0;
mcu_size = 19.2;
mag = 1.2;
height = 15;
toph = height - 6 +mag;
both = -6 + mag;
agile_wid = 3;
color("DarkGreen", 0.7){
    difference(){
        // outside
        translate([-mag,-mag,-6]){
            cube(size=[brd_len+mag,brd_wid+2*mag,height+2*mag], center=false);
        }
        // inside
        difference(){
            translate([0,0,-6+mag]){
                cube(size=[brd_len,brd_wid,height], center=false);
            }
            translate([0,0,-2-pcb_tick]){
                cube(size=[2,2,2], center=false);
            }
            translate([0,0,0]){
                cube(size=[2,2,2], center=false);
            }
            translate([0,brd_wid-2,-2-pcb_tick]){
                cube(size=[2,2,2], center=false);
            }
            translate([0,brd_wid-2,0]){
                cube(size=[2,2,2], center=false);
            }
        }
        // sides
        for(i = [1 : 2 : 20]){
            translate([-mag,-mag, -6+i*0.8]){
                cube(size=[brd_len+mag, 0.4, 0.8], center=false);
            }
            translate([-mag,brd_wid+mag-0.4, -6+i*0.8]){
                cube(size=[brd_len+mag, 0.4, 0.8], center=false);
            }
        }
        // holes for the mcu
        for(i = [1 : 2 : 10]){
            for (j = [0 : 2 : 40]){
                translate([40 + j*0.8, brd_wid, -6+i*0.8]){
                    cube(size=[0.8, mag, 0.8], center=false);
                }
            }
        }
        // top
        // name
        translate([10,10,toph+mag-0.4]){
           linear_extrude(height = 0.4, size = 10){
                text("pcduino v1, hao");
           }
        }
        // mcu
        translate([46,24,toph+0.5]){
            cube(size=[mcu_size,mcu_size,0.7], center=false);
        }
        for(i = [2 : 2 : 22]){
            for (j = [2 : 2 : 22]){
                translate([46 + i*0.8, 24 + j*0.8, toph]){
                    cube(size=[0.8, 0.8, mag], center=false);
                }
            }
        }
        // J5
        translate([22,49,toph+0.5]){
            cube(size=[8,3,mag-0.5], center=false);
        }
        // J6
        translate([75,47,toph+0.5]){
            cube(size=[8,5,mag-0.5], center=false);
        }
        // J10
        translate([35,42,toph+0.5]){
            cube(size=[5,5,mag-0.5], center=false);
        }
        // J7
        translate([81,24,toph+0.5]){
            cube(size=[5,8,mag-0.5], center=false);
        }
        // J8, J9, J11, J12
        translate([35,0,toph+0.5]){
            cube(size=[48,8,mag-0.5], center=false);
        }
        // usb1
        translate([-mag-2,4,0]){
            cube(size=[mag+5,15,7], center=false);
        }
        // usb2
        translate([-mag-2,34,0]){
            cube(size=[mag+5,15,7], center=false);
        }
        //microusb-otg
        translate([-mag-2,22,-4]){
            cube(size=[mag+5,8,3], center=false);
        }
        //SD
        translate([97,-mag-2,-3.6]){
            cube(size=[15,5,2], center=false);
        }
        //In order to insert SD
        translate([111,-0.8,-3.6]){
            cube(size=[40,0.8,2], center=false);
        }
        
    }
}
// cover parts
color("DarkGreen", 0.7){
    translate([0,0,20]){
        difference(){
            translate([-mag,-mag,-6]){
                 cube(size=[mag,brd_wid+2*mag,height+2*mag], center=false);
            }
            // hdmi
            translate([-mag,36, 0]){
                 cube(size=[mag,16, 6.4], center=false);
            }
            //microusb-power
            translate([-mag,25,-4]){
                cube(size=[mag,8,3], center=false);
            }
            //ethernet
            translate([-mag,4,-3]){
                cube(size=[mag,15,12], center=false);
            }
            translate([-mag,2,0]){
                cube(size=[mag,2,4], center=false);
            }
            translate([-mag,18,0]){
                cube(size=[mag,2,4], center=false);
            }
        }
        // in order to lock the cover
        translate([0,22, toph-0.8]){
           cube(size=[4,4, 0.8], center=false);
        }
        translate([0,10, both]){
           cube(size=[4,4, 0.8], center=false);
        }
        translate([0,40, both]){
           cube(size=[4,4, 0.8], center=false);
        }
        translate([0, 0, 2]){
           cube(size=[4, 0.8, 4], center=false);
        }
        translate([0, brd_wid-0.8, 2]){
           cube(size=[4, 0.8, 4], center=false);
        }
    }
}
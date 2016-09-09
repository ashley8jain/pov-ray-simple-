#version 3.7;
global_settings {  assumed_gamma 1.0 }
#include "colors.inc"


camera{ ultra_wide_angle
        angle 75
        right x*image_width/image_height
        location  <0.0 , 1.0 ,-3.0>
        look_at   <0.0 , 0.0 , 0.0>
         
           rotate < 0,360*clock,0>
          }

light_source{ <1500,2500,-2500>
              color rgb<1,1,1> }

sky_sphere{ pigment{color Cyan}}


sphere{ <0,0,0>, 0.45
         material{
          texture { pigment{ color rgbt<0.9,0,1,0>}
                 
                      finish { diffuse 0.1
           reflection 0.2
           specular 0.5
           roughness 0.03
           }
                  }   
                  
          interior{ ior 1.5
                 
                  } 
               
               }
        translate < 0, 0, 0>
        
       }  
//sun
sphere{  <0,0,1>,0.15
            texture { pigment{ rgb<5,1,0.1> }
                  }
                  translate<0,1.48,0>
                } 
prism {
    conic_sweep
    linear_spline
    0, // height 1
    1, // height 2
    5, // the number of points making up the shape...
    <2.5,2.5><-2.5,2.5>,<-2.5,-2.5>,<2.5,-2.5>,<2.5,2.5>
    rotate <180, 0, 0>
    translate <22.5, 4, 2.5>
    scale <0.1, 0.5, 0.1>
    pigment { 
               color Brass }  
               translate<0,-0.5,0>
  }
                      
box {<0, 0,0>,< 0.5,1.5,0.5>
          pigment {  color Brass }
   translate <2,-0.5,0>
  }        
   
 


//surface
box {<-3.00,0.01,-2.00>,<3.50,0.05,3.00>
       texture{ pigment{ checker
                         color Gray55
                         color DarkOliveGreen}  
                         scale 0.25*4
              } // end of texture
  translate<0,-0.5,0>
  
    }     
      
cylinder {
    <-1.5, -1, 0>,     // Center of one end
    <-1.5, 1, 0>,     // Center of other end
    0.25            // Radius
      rotate <0,0,-10>   
   pigment {  color White }
  }   
        cylinder {
    <-1.5, -1, 0>,     // Center of one end
    <-1.5, 1.2, 0>,     // Center of other end
    0.2            // Radius
        rotate <0,0,-10>  
   pigment {  color White }
  }    
  
  
prism {
    conic_sweep
    linear_spline
    0, // height 1
    1, // height 2
    5, // the number of points making up the shape
    <2.5,2.5><-2.5,2.5>,<-2.5,-2.5>,<2.5,-2.5>,<2.5,2.5>
    rotate <180, 0, 0>
    translate <0, 1, -15>
    scale <0.2, 1, 0.1>
    pigment { 
               color DarkSlateGray }  
               translate<0,-0.5,0>
  }
  
  
  
  
  
  // The text: ------------------------
text { ttf "arial.ttf", "Pisa tower", 0.2 , 0
       texture{ pigment{ color rgb<1,0.65,0>}
                normal { bumps 0.5 scale 0.005}
                finish { diffuse 0.8 specular 1}
              } 
       scale<1,1.8,1>*0.2
       translate<-1.70 ,0.50, -0.5 >
       //rotate<0,360*clock,0>
     }   
     
text { ttf "arial.ttf", "Louvre museum", 0.2 , 0
       texture{ pigment{ color rgb<1,0.2,0>}
                normal { bumps 0.5 scale 0.005}
                finish { diffuse 0.8 specular 1}
              } 
       scale<1,1.8,1>*0.1
       translate<-0.3 ,0.70, -2 >
       //rotate<0,360*clock,0>
    
     }  
     
     
text { ttf "arial.ttf", "Clock tower", 0.2 , 0
       texture{ pigment{ color rgb<1,0.65,1>}
                normal { bumps 0.5 scale 0.005}
                finish { diffuse 0.8 specular 1}
              } 
       scale<1,1.8,1>*0.2
       translate<1.5 ,0.70, -0.2 >
       //rotate<0,360*clock,0>
     }    
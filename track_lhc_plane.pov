#include "textures.inc"
#include "colors.inc"

background { color White }

box {
   <-0.01, 0, -1000>, <0.01, 1000, 50>
   
   pigment {
      color rgbft <1, 1, 0, 0.5, 0.7>
   }
   scale 1
   rotate z*60
   translate <0, 0, 0>
   no_shadow
   no_reflection
}

cylinder {
   <0, 10000, 0>, <0, -1000, 0>, 0.1
   
   pigment {
      color rgb <0.3, 0.3, 0.3>
   }
   scale 1
   rotate x*90
   translate <0, 0, 0>
}

prism {
   linear_spline
   linear_sweep
   -0.02, 0.02,
   4,
   <0, 50>, <0, -1000>, <-87.156, -1000>, <0, 50>
   
   pigment {
      color rgbft <0.8, 0.8, 0, 1, 0.3>
   }
   scale 1
   rotate z*(-30)
   translate <0, 0, 0>
   no_shadow
   no_reflection
}

cylinder {
   <0, 0, 0>, <0, -1000, 0>, 0.05
   
   pigment {
      color rgb <1, 1, 0>
   }
   scale 1
   rotate <90, 5, -30>
   translate z*50
   no_shadow
   no_reflection
   double_illuminate
}

union {
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*240
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate <0, 0, 0>
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*20
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*40
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*60
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*80
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*100
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*120
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*140
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*160
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*180
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*200
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*220
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*260
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*280
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*300
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate z*3.5
      rotate y*320
   }
   
   prism {
      linear_spline
      linear_sweep
      0, 0.5,
      5,
      <1.05, 2>, <0.5, -1>, <-0.5, -1>, <-1.05, 2>, <1.05, 2>
      scale 1
      translate <0, 0.6, 3.5>
      rotate y*340
   }
   
   texture { PinkAlabaster }

   rotate x*90
}

global_settings {
   assumed_gamma 1.5
   noise_generator 2
}

light_source {
   <-9.65, 4.41, -12.3144>, rgb <1, 1, 1>
}

camera {
   perspective
   location <-7.59333, 5.38486, -10.1333>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.33333, 0, 0>
   up <0, 1, 0>
   look_at <-3.44271, 1.50895, 0.487916>
}
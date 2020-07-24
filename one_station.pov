#include "textures.inc"
#include "colors.inc"
#include "glass.inc"

background { color White }

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
   rotate x*90
   
   texture { PinkAlabaster }
}

global_settings {
   adc_bailout 0.00392157
   assumed_gamma 1.5
   noise_generator 2
}

light_source {
   <-8.44687, 8.89577, 11.9155>, rgb <1, 1, 1>
}

camera {
   perspective
   location <3.01423, 0.0999969, 9.24058>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.3333, 0, 0>
   up <0, 1, 0>
   look_at <-0.257824, 0.056342, 0.567869>
   angle 90
}
#include "textures.inc"
#include "colors.inc"

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
      rotate y*200
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
   <-23.4517, 24.0435, 8.91456>, rgb <1, 1, 1>
}

camera {
   perspective
   location <-4.50851, 5.29108, 4.95581>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.33333, 0, 0>
   up <0, 1, 0>
   look_at <-1.63868, 3.73218, 0.230203>
}
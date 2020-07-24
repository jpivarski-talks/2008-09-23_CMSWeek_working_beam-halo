#include "textures.inc"
#include "colors.inc"

background { color White }

cylinder {
   <0.0820763, 4.99663, 1.19011>, <1.10803, -3.63978, 1.06956>, 0.017933
   
   pigment {
      color rgb <1, 0, 0>
   }
   scale 1
   rotate <0, 0, 0>
   translate <0.0820763, 0.689219, 0.640121>
}

prism {
   linear_spline
   linear_sweep
   0, 0.3,
   5,
   <1.04163, 2.02026>, <0.5, -1>, <-0.5, -1>, <-1.01069, 2.02026>, <1.04163, 2.02026>

   texture { PinkAlabaster }
   scale 1
   rotate <0, 0, 0>
   translate <0, 0, 0>
}

prism {
   linear_spline
   linear_sweep
   0, 0.3,
   5,
   <1.04163, 2.02026>, <0.5, -1>, <-0.5, -1>, <-1.01069, 2.02026>, <1.04163, 2.02026>
   
   texture { PinkAlabaster }
   scale 1
   rotate y*17.2
   translate <0.959284, -0.668762, -0.142903>
}

camera {
   perspective
   location <1.58105, 2.17066, 4.7549>
   sky <0, 1, 0>
   direction <0, 0, 1>
   right <1.33333, 0, 0>
   up <0, 1, 0>
   look_at <0.820763, 0, 1.55945>
}

global_settings {
   assumed_gamma 1.5
   noise_generator 2
}

light_source {
   <3.5224, 1.6581, 2.5975>, rgb <1, 1, 1> shadowless
}

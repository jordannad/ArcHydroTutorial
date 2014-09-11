---
layout: collection
title: DEM Reconditioning
---

##Background##

The stream network developed through the sequence of steps in the terrain processing menu will only ever be "as good as" the underlying DEM and often it may not match the NHD stream flowlines. Topography is not the only factor that controls stream location. Steams can meander and cut into higher ground. This is particularly the can where the ground is made of alluvial sediments that are easily remobilised. DEM reconditioning is only suggested when the vector stream information is more reliable than the raster DEM information. In addition, this *step can only be performed if there are no gaps in the NHD data*.

<a href="/pictures/DEMReconditioning.png"><img src="/pictures/DEMReconditioning.png"></a>

This function modifies a DEM by imposing linear features onto it (burning/fencing). It is an 
implementation of the AGREE method developed at the University of Texas at Austin in 1997. For a 
full reference to the procedure [click here](http://www.ce.utexas.edu/prof/maidment/GISHYDRO/ferdi/research/agree/agree.html)

##Inputs##

The function needs as input a raw DEM (or LevelDEM) and a linear feature class (e.g. river to burn in) 
that both have to be present in the map document. There are three inputs which control the degree to which the stream network is burned into the DEM:

1. Stream buffer (cells) – this is the number of cells around the linear feature class for which the smoothing will occur. In general, thenarrower this is, the less it disrupts what the raw dem "tells you" about the surface. Values of $$\approx$$ 2 are common.

2. Smooth drop/raise – this is the amount (in vertical units) that the river will be dropped (if the number is positive). This value will be used to interpolate DEM into the buffered area (between the boundary of the buffer and the dropped/raised vector feature). 
So, to see what smooth drop/raise you need. Start with zero and just go to the flow direction grid in the processing and stop. Then see if you have any flow direction issues right along the streams that you don't want, increase it.

3. Sharp drop/raise – this is the additional amount (in vertical units) that the river will be dropped (if the number is positive). This has the effect of additional burning/fencing on top of the smooth buffer interpolation. It needs to be performed to ensure preserving the linear features used for burning/fencing.
This value can be very large (10,000 would even work). Where the agreestream polylines are, the burning process lowers those cells this depth.
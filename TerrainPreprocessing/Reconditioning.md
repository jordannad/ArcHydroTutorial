---
layout: collection
title: DEM Reconditioning
---

##Background##

The stream network developed through the sequence of steps in the terrain processing menu will only ever be *as good as the underlying DEM* and often it may not match the NHD stream flowlines. Topography is not the only factor that controls stream location. Steams can meander and cut into higher ground. This is particularly true where the ground is made of alluvial sediments that are easily remobilised. DEM reconditioning is only suggested when the vector stream information is more reliable than the raster DEM information. In addition, this *step can only be performed if there are no gaps in the NHD data*.

<a href="{{ site.url }}/pictures/DEMReconditioning.png"><img src="{{ site.url }}/pictures/DEMReconditioning.png"></a>

The ArcGIS reconditioning function modifies a DEM by imposing linear features onto it (burning/fencing). It is an 
implementation of the AGREE method developed at the University of Texas at Austin in 1997. For a 
full reference to the procedure [click here](http://www.ce.utexas.edu/prof/maidment/GISHYDRO/ferdi/research/agree/agree.html)

##Steps##

DEM Reconditioning is an optional step.  **As a first run through, do NOT perform this step**.  Delineate the watershed and complete all necessary steps of the exercise.  If you have time at the end of the assignment, try to delineate your watershed again and include this as **a first step** before the Fill Sinks step. 

###Inputs###

The function needs as input a raw DEM (or LevelDEM) and a linear feature class (e.g. river to burn in) 
that both have to be present in the map document. There are three inputs which control the degree to which the stream network is burned into the DEM:

<a href="{{ site.url }}/pictures/DEMReconditioning2.png"><img src="{{ site.url }}/pictures/DEMReconditioning2.png"></a>


1. Stream buffer (cells) – this is the number of cells around the linear feature class for which the smoothing will occur. In general, the narrower this is, the less it disrupts what the raw dem "tells you" about the surface. Values of $$\approx$$ 2-5 are common.

2. Smooth drop/raise – this is the amount (in vertical units) that the river will be dropped (if the number is positive). This value will be used to interpolate DEM into the buffered area (between the boundary of the buffer and the dropped/raised vector feature). 

3. Sharp drop/raise – this is the additional amount (in vertical units) that the river will be dropped (if the number is positive). This has the effect of additional burning/fencing on top of the smooth buffer interpolation. It needs to be performed to ensure preserving the linear features used for burning/fencing.
This value can be very large (10,000 would even work). Where the agreestream polylines are, the burning process lowers those cells this depth.

##Final Delineation with Reconditioning##

If we run through all of the remaining terrain preprocessing steps once again using the AGREEDEM for the base, we will observe the following watershed:

<a href="{{ site.url }}/pictures/Reconditioned2.png"><img src="{{ site.url }}/pictures/Reconditioned2.png"></a>

Compare this result to the watershed we got without reconditioning:

<a href="{{ site.url }}/pictures/Reconditioned3.png"><img src="{{ site.url }}/pictures/Reconditioned3.png"></a>

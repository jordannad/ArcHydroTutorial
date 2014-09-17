---
layout: collection
title: Fill Sinks
---

##Background##

Sinks are cells in the DEM for which all surrounding cells have higher values, which means water flowing across the ground surface would accumulate in them.  While there are natural sinks in the environment, in a DEM they are often non-physical, caused by data resolution issues or the rounding of elevations to the nearest integer value. Differentiating “real” sinks from terrain construction artifacts is not always a straightforward process and often involves some subjective interpretation.

This function fills the sinks in a grid.  If cells with higher elevation surround a cell, the water is trapped in that cell and cannot flow. A flow direction cannot be defined for sinks so the Fill Sinks function modifies the elevation value to eliminate these problems.

<a href="{{ site.url }}/pictures/FillSinks.png"><img src="{{ site.url }}/pictures/FillSinks.png"></a>

## Steps##

1.	Go to Terrain Preprocessing &#8594; DEM Manipulation &#8594; Fill Sinks.

<a href="{{ site.url }}/pictures/FillSinks2.png"><img src="{{ site.url }}/pictures/FillSinks2.png"></a>

2. Select the Fill All radio button.  Click OK. 

<a href="{{ site.url }}/pictures/FillSinks3.png"><img src="{{ site.url }}/pictures/FillSinks3.png"></a>

The Fil raster generated from the original projected DEM is shown below. Note that the lowest elevation is now 0, compared to negative values (sinks) in the DEM.

<a href="{{ site.url }}/pictures/FillSinks4.png"><img src="{{ site.url }}/pictures/FillSinks4.png"></a>

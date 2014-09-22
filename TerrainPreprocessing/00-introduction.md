---
layout: collection
title: Introduction
---

Watershed delineation is the process of identifying the drainage area of a point or set of points. The watershed divide is perpendicular to contour lines as water flows in the steepest downslope direction. The algorithms developed in the ArcHydro suite have the same goal of identifying the watershed divide to delineate watersheds. These algorithms use only the projected DEM. Raster analysis is performed to generate data on flow direction, flow accumulation, stream definition, stream segmentation, and watershed delineation. These data are 
then used to develop a vector representation of catchments and drainage lines from selected points. 
As you perform the exercise, please remember that streamline data is unnecessary but can be used to improve the delineation via DEM reconditioning.


The major steps in Terrain Preprocessing are as follows:

1.	DEM Reconditioning (optional):  “Burn” a known drainage network into a DEM to make sure that streams are created in the right places. 

2.	Fill Sinks:  Increase the elevation of cells that have incorrect elevation values. 

3.	Flow Direction:  Determine the direction water naturally flows in the landscape. 

4.	Flow Accumulation:  Determine the number of upstream cells draining to a given cell. 

5.	Stream Definition:  Create the stream network. 

6.	Stream Segmentation:  Divide the streams into segments or links. 

7.	Catchment Grid Delineation:  Delineate a subbasin for every stream segment. 

8.	Catchment Polygon Processing:  Convert the catchment boundaries from a raster to a polygon vector layer. 

9.	Drainage Line Processing:  Convert the streams from a raster to a line vector layer. 

10.	Adjoint Catchment Processing:  Aggregate some subbasins to improve computational performance. 

11.	Drainage Point Processing:  Create outlet points for each subbasin. 





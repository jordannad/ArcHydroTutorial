---
layout: collection
title: Catchment Relief
---

Recall that the catchment relief is the difference between the maximum and minimum elevations in the watershed. In order to calculate the relief in ArcGIS we need to restrict our DEM to the extent of our delineated watershed. We do this by clipping the layers. This will also be useful for the calculation of the Main Channel length.

1)	Make sure the Layers Data Frame is active. 

2)	We are going to clip the DEM by the actual shape of the watershed. Make sure the ArcToolbox menu is visible. 

3)	Within ArcToolbox, open Data Management Tools &#8594; Raster &#8594; Raster Processing &#8594; Clip. 

<a href="/pictures/Relief0.png"><img src="/pictures/Relief0.png"></a>

4)	For the input raster, select the Fil raster. Select the watershed polygon layer (e.g., LibertyHill.shp) as the output extent. Then check the box to the left of “Use input features for clipping geometry.” Name the output raster:  DEMClip.
 
5)	Before selecting OK: Select the Environments button to change the analysis options. Scroll through the menu and make the following changes:

-- Output coordinates &#8594; Output Coordinate System: Same as Input

-- Processing extent &#8594; Extent: Same as Layer [your watershed polygon layer]

-- Raster analysis &#8594; Cell size: Same as Layer Fil

-- Raster analysis &#8594; Mask: [your watershed polygon layer]

<a href="/pictures/Relief1.png"><img src="/pictures/Relief1.png"></a>

6)	Click OK in Environments and OK in the Clip Window.

7)	The difference between the high and low values in the Table of Contents of the resulting raster layer indicates the catchment relief in meters. To find the average catchment elevation, you can use Data Management Tools &#8594; Raster &#8594; Raster Properties &#8594; Get Raster Properties. Select the name of the input raster layer, and chose “Mean” as the Property type.
 
<a href="/pictures/Relief2.png"><img src="/pictures/Relief2.png"></a>

8)	Clip the Fdr (Flow Direction) Raster Layer using a similar method to how you clipped the DEM in Steps 3-6. Name the output raster: FdrClip.

9)	Clip the DrainagLine in the same way. Go to Geoprocessing &#8594; Clip. Set the Input Features as DrainageLine.. Name the output raster: DrainageLineClip. Click OK.

<a href="/pictures/Relief3.png"><img src="/pictures/Relief3.png"></a>

<a href="/pictures/Relief4.png"><img src="/pictures/Relief4.png"></a>

10)	Go to Insert &#8594; Data Frame. 

11)	Multi-select all the clipped layers as well as the watershed polygon by holding down the CTRL key and clicking on the layer names. Drag and drop them into the new Data Frame.  Right click on the new Data Frame. Click Activate. 

<a href="/pictures/Relief4.png"><img src="/pictures/Relief5.png"></a>

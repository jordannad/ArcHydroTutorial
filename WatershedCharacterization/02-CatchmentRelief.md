---
layout: collection
title: Catchment Relief
---

1.	Make sure the Layers Data Frame is active. 

2.	We are going to clip the DEM by the actual shape of the watershed. Make sure the ArcToolbox menu is visible. 

3.	Within ArcToolbox, open Data Management Tools &#8594; Raster &#8594; Raster Processing &#8594; Clip. 

4.	For the input raster, select the Fil raster. Select the watershed polygon layer (e.g., LibertyHill.shp) as the output extent. Then check the box to the left of “Use input features for clipping geometry.” Name the output raster:  DEMClip.
 
5.	Before selecting OK: Select the Environments button to change the analysis options. Scroll through the menu and make the following changes:

-- Output coordinates &#8594; Output Coordinate System: Same as Input

-- Processing extent &#8594; Extent: Same as Layer [your watershed polygon layer]

-- Raster analysis &#8594; Cell size: Same as Layer Fil

-- Raster analysis &#8594; Mask: [your watershed polygon layer]

6.	Click OK in Environments and OK in the Clip Window.

7.	The difference between the high and low values in the Table of Contents of the resulting raster layer indicates the catchment relief in meters. To find the average catchment elevation, you can use Data Management Tools  Raster  Raster Properties  Get Raster Properties. Select the name of the input raster layer, and chose “Mean” as the Property type.
 
Figure 53. Maximum and Minimum Elevation values for the Catchment.

8.	Clip the Fdr (Flow Direction) Raster Layer using a similar method to how you clipped the DEM in Steps 3-6. Name the output raster: FdrClip.

9.	Clip the DrainagLine in the same way. Go to Geoprocessing  Clip. Set the Input Features as DrainageLine.. Name the output raster: DrainageLineClip. Click OK.

10.	Go to Insert &#8594; Data Frame. 

11.	Multi-select all the clipped layers by holding down the CTRL key and clicking on the layer names. Drag and drop them into the new Data Frame. Right click on the new Data Frame. Click Activate. 

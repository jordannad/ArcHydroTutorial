---
layout: collection
title: Main Channel Length and Slope
---

While the DrainageLine is perhaps close to where the river actually starts, the standard hydrological definition of the main channel stretches to the edge of the watershed boundary. We need to figure out where the upstream meets the watershed boundary. 

1.	Go to Terrain Preprocessing  Longest Flow Path for Catchments. 

2.	Set Catchment to DEMClip and Flow Direction Grid to FdrClip. Click OK.

Note: If you were to run this preprocessing step on the whole DEM, it would take a long time.

3.	Open the attribute table of the new line polygon to determine the main channel length.

Note: It is true that Longest Flow Path is not always the Main Channel. If this is the case you can use the measure tool to help you determine the main channel length. Alternatively, open the Stream Definition Tool and decrease the Stream Threshold. This will create many more streams that get closer to the watershed boundary.

4.	Click the Identify Tool. Set “Identify from:” to DEMClip. Click on the very bottom and very top of the Longest Flow Path Line to determine their elevations. The main channel slope is the change in elevation divided by the main channel length. Would you consider this consider this watershed to have a steep or shallow main channel slope?

Note: The watershed outlet elevation should be the lowest DEMClip elevation value. However, the elevation of the top of the main channel may very well be less than the highest elevation in the watershed.

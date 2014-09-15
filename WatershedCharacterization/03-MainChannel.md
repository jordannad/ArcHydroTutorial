---
layout: collection
title: Main Channel Length and Slope
---

While the DrainageLine is perhaps close to where the river actually starts, the standard hydrological definition of the main channel stretches to the edge of the watershed boundary. We need to figure out where the upstream meets the watershed boundary. We can do this by using the longest flow path tool:

1) Go to Terrain Preprocessing &#8594; Longest Flow Path for Catchments. 

2) Set Catchment to your watershed polygon and Flow Direction Grid to FdrClip. Click OK.

<a href="/pictures/MainChannelLength1.png"><img src="/pictures/MainChannelLength1.png"></a>

3) Open the attribute table of the new line polygon to determine the main channel length.

<a href="/pictures/MainChannelLength2.png"><img src="/pictures/MainChannelLength2.png"></a>

Note: It is true that Longest Flow Path is not always the Main Channel. If this is the case you can use the measure tool to help you determine the main channel length. Alternatively, open the Stream Definition Tool and decrease the Stream Threshold. This will create many more streams that get closer to the watershed boundary.

4.	Click the Identify Tool <a href="/pictures/IdentifyTool.png"><img src="/pictures/IdentifyTool.png"></a>. Set “Identify from:” to DEMClip. Click on the very bottom and very top of the Longest Flow Path Line to determine their elevations. The main channel slope is the change in elevation divided by the main channel length. Would you consider this consider this watershed to have a steep or shallow main channel slope?

<a href="/pictures/MainChannelSlope1.png"><img src="/pictures/MainChannelSlope1.png"></a>

Note: The watershed outlet elevation should be the lowest DEMClip elevation value. However, the elevation of the top of the main channel may very well be less than the highest elevation in the watershed.

*Recall in your first assignment, you calculated the main channel slope using the formula:*

$$ S = \frac{Elevation_{85\%} - Elevation_{10\%}}{0.75*Length}$$

*You may want to compare the result you got from step 4 and your main channel slope from Exercise 1. Are they similar?*
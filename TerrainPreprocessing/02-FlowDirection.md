---
layout: collection
title: Flow Direction
---

##Background##

An algorithm assigns a flow direction code to each cell, based on the steepest downhill slope as defined by the DEM. The flow direction is coded as a base two number and indicates the cell towards which the water flows.

{% image presetName 70% /pictures/FlowDirection1.png "Figure: 8 Direction Pour Point Grid" bottom %}

##Calculating the Slope##

Assuming we have a 10 meter DEM (corresponding to a 1/3 arc second grid), then each cell is a 10 m by 10 m square. To calculate the greatest slope direction, we simply use the Pythagorean theorem:

<a href="/pictures/FlowDirection2.png"><img src="/pictures/FlowDirection2.png"></a>

Calculating the greatest slope for the circled box if we have a 10 m DEM:

$$\mbox{Southeast Direction } \frac{55-21}{10\sqrt{2}} = 2.4$$

$$\mbox{Easterly Direction } \frac{55-22}{10} = 3.3$$

The greatest downward slope is in the easterly direction.


The arrows are represented by the base two numbers within the ArcHydro program.

<a href="/pictures/FlowDirection3.png"><img src="/pictures/FlowDirection3.png"></a>


##Steps##

1. Go to Terrain Preprocessing &#8594; Flow Direction &#8594. Click OK


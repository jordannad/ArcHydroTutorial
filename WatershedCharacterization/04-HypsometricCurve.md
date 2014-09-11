---
layout: collection
title: Hypsometric Curve
---

A hypsometric curve is a cumulative distribution function of watershed elevations. 

1.	Open the DEMClp attribute table. In the top left corner, click on the Table Options          Button .

2.	Export the table. Open the .dbf file in Excel. The VALUE column indicates the elevation value. The COUNT column indicates the number of cells with that elevation value.

3.	Sum up the COUNT column. This is the total number of pixels in the watershed.

4.	In Column C, cumulatively sum the COUNT column. In Column D, divide each cumulative value by the sum of the COUNT column. This indicates the percentage of the watershed that is at or below the elevation value.

5.	Plot Column D vs. Column A. This is the Hypsometric Curve.  Do you think you could create this curve manually using a map and a planimeter?



A 3D point cloud representation of a car was provided. This is a subset of an actual recording taken with a `Velodyne` `LiDAR` from the public dataset Kitti. Each point has the following characteristics: the coordinates `x`, `y`, `z` and the reflectivity `r`. Such a point cloud can be visualised in 3D for example with the free software [CloudCompare](http://www.danielgm.net/cc/release/). 

The original (uncompressed) point cloud is found at `input/Car_XYZI_uncompressed_ASCII.ply`. A screenshot from CloudCompare for this point cloud is found at `input/Car_uncompressed.png`. Each points are colored differently as they have different reflectivity values.

Three decompressed files are available in `input/Car_XYZI_decompressed_ASCII_A.ply`, `input/Car_XYZI_decompressed_ASCII_B.ply`, `input/Car_XYZI_decompressed_ASCII_C.ply`, each produced with a different compression parameter.

The goal is to rank the compressions methods `A`, `B` and `C` from best to worse accuracy. To make it simple, one can ignore the reflectivity numbers, and focus on the geometry (`x`,`y`,`z`). First obtain a qualitative answer quickly by eye by using `CloudCompare`. Load the four `.ply` files, and look at them one at a time, then also overlaying the uncompressed with one decompressed file, and do it for the three options.

But in order to compare rigourously the three compression options quantitatively, one needs to solve the `C++` task. 

Although the uncompressed and compressed point clouds in the two `.ply` files contain the same number of points (one point being one line in the file), the points do not appear in the same order. First one needs to re-arrange the points in the decompressed point cloud to be in the same order as those in the compressed point clouds. The choice is made by having the smallest cartesian distance. That is, for each point in the uncompressed point cloud, study the points in the decompressed point cloud and find the one that is closest to it. 

The output file contains the list of points with the values:  `x_uncompressed`, `y_uncompressed`, `z_uncompressed`, `z_decompressed`, `y_decompressed`, `z_decompressed`, `distance`.

Further data analysis was done in Python.




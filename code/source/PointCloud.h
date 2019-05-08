/*
 * PointCloud.h
 *
 *  Created on: May 4, 2019
 *      Author: michelle
 */

#include <cstdlib>
#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <utility>
#include <algorithm>

using namespace std;

#ifndef CODE_SOURCE_POINTCLOUD_H_
#define CODE_SOURCE_POINTCLOUD_H_

class PointCloud {

public:
	double **points;    //array of array
	int size;

	PointCloud(string inputFile);
	virtual ~PointCloud();

	void readPLY(string filename);


	double ** pairing(PointCloud *pc2,string outputFileName);
};

#endif /* CODE_SOURCE_POINTCLOUD_H_ */

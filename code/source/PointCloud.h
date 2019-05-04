/*
 * PointCloud.h
 *
 *  Created on: May 4, 2019
 *      Author: michelle
 */

#include <cstdlib>
#include <cstring>
#include <string>

using namespace std;

#ifndef CODE_SOURCE_POINTCLOUD_H_
#define CODE_SOURCE_POINTCLOUD_H_

class PointCloud {
private:
	double **points;    //array of array
	int size;

public:
	PointCloud(string inputFile);
	virtual ~PointCloud();

	int addTwoThings(int a, int b);

	/**
	 *
	 */
	double calculateDistance(PointCloud *x);
};

#endif /* CODE_SOURCE_POINTCLOUD_H_ */

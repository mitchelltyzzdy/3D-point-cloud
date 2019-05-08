/*
 * Main.cpp
 *
 *  Created on: May 4, 2019
 *      Author: michelle
 */

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <math.h>
#include <fstream>
#include <array>

#include "PointCloud.h"

using namespace std;

int main (int argc, char *argv[]) {
	PointCloud *pc_A = new PointCloud("input/Car_XYZI_decompressed_ASCII_A.ply");
	cout << "read A" << endl;
	PointCloud *pc_B = new PointCloud("input/Car_XYZI_decompressed_ASCII_B.ply");
	cout << "read B" << endl;
	PointCloud *pc_C = new PointCloud("input/Car_XYZI_decompressed_ASCII_C.ply");
	cout << "read C" << endl;
	PointCloud *pc_uncompressed = new PointCloud("input/Car_XYZI_uncompressed_ASCII.ply");
	cout << "read uncompressed" << endl;

	double **distance_A = pc_uncompressed->pairing(pc_A, "output/dist_A.txt");
	double **distance_B = pc_uncompressed->pairing(pc_B, "output/dist_B.txt");
	double **distance_C = pc_uncompressed->pairing(pc_C, "output/dist_C.txt");

	return 0;
}



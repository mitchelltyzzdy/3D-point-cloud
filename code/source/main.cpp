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

#include "PointCloud.h"

using namespace std;

int main (int argc, char *argv[]) {
	PointCloud *pc = new PointCloud();
	int result = pc->addTwoThings(234, 567);
	cout << "result is " << result << endl;

	return 0;
}



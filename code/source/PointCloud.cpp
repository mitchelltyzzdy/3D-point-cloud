/*
 * PointCloud.cpp
 *
 *  Created on: May 4, 2019
 *      Author: michelle
 */

#include <iostream>
#include <fstream>
#include <sstream>
#include <utility>
#include <algorithm>
#include <math.h>
#include <string>
#include <cstdlib>
#include <typeinfo>

#include "utils.h"
#include "PointCloud.h"


PointCloud::PointCloud(string inputFile) {
	readPLY(inputFile);
}

PointCloud::~PointCloud() {
	// TODO Auto-generated destructor stub
}



// read a .ply file and convert the location data to 2D array
void PointCloud::readPLY(string filename){
	ifstream ifile(filename);
	string line("");
	string vertexCountPattern = "element vertex ";

	points = NULL;

	// iterate past the header
	if (ifile.is_open()) {
		while (ifile.good() && line != "end_header"){
			getline (ifile, line);
			//cout << line << endl;
			if (line.find(vertexCountPattern) != string::npos) {
				cout << "FOUND VERTEX COUNT!!" << endl;
				string numVertices = line.substr(vertexCountPattern.length(), string::npos);
				size = std::atoi(numVertices.c_str());  // or use std::stoi()
				cout << "num vertices is " << size << endl;

				// now that we know the size, we can allocate the array
				if (points == NULL) {
					points = new double*[size];
				} else {
					cout << "WARNING: duplicate vertex counts specified in input file!";
				}
			}
		}

		// load the lines containing data
		int di = 0;
		while (ifile.good()) {
			if (di > size) break;  // print a warning?
			getline (ifile, line);
			//cout << line << endl;
			vector<string> tokens = split(line, ' ');
			//cout << "number of tokens: " << tokens.size() << endl;
			if (tokens.size() != 4) {
				// we passed the end of the data
				break;
			}
			points[di] = new double[3];
			points[di][0] = atof(tokens[0].c_str());
			points[di][1] = atof(tokens[1].c_str());
			points[di][2] = atof(tokens[2].c_str());
			//cout << "read data point " << di << ": " << points[di][0] << " , "<< points[di][1] << " , "<< points[di][2] << endl;
			di++;
		}

		ifile.close();
	} else {
		cout << "ERROR: could not open the file " << filename << endl;
	}
}




//For each point in a location data set, find the corresponding point in a second location data set by searching for smallest distance.
//Write the matching location points and their distance to a .txt file
double ** PointCloud::pairing(PointCloud *pc2,string outputFileName){
	cout << "paring"<< endl;
	double **distanceArray;
	distanceArray = new double*[size];


	for (int i=0; i < size; i++){
		//cout << i << endl;
		double min = 1000;
		int index_min;

		for (int j=0; j<size; j++) {
			//cout << i << " " << j << endl;
			//cout << points[i][0] << " , "<< points[i][1] << " , "<< points[i][2] << endl;
			//cout << pc2->points[j][0] << " , "<< pc2->points[j][1] << " , "<< pc2->points[j][2] << endl;
			double distance = pow((pow((points[i][0] - pc2->points[j][0]),2) + pow((points[i][1] - pc2->points[j][1]),2)
					+ pow((points[i][2] - pc2->points[j][2]),2)),0.5);
			if (distance < min){
				min = distance;
				index_min = j;
			}
		}

		distanceArray[i] = new double[7];

		distanceArray[i][0]=points[i][0];
		distanceArray[i][1]=points[i][1];
		distanceArray[i][2]=points[i][2];
		distanceArray[i][3]=pc2->points[index_min][0];
		distanceArray[i][4]=pc2->points[index_min][1];
		distanceArray[i][5]=pc2->points[index_min][2];
		distanceArray[i][6] = min;
	}

	//save to .txt file
	ofstream outfile(outputFileName);

	for (int i = 0; i < size; i++)
	{
		outfile << distanceArray[i][0] << " " << distanceArray[i][1] <<" "<< distanceArray[i][2] << " "<< distanceArray[i][3]
		<< " "<< distanceArray[i][4] << " "<< distanceArray[i][5] << " "<< distanceArray[i][6] << endl;
	}
	outfile.close();


	return distanceArray;
}

/*
 * utils.h
 *
 *  Created on: May 5, 2019
 *      Author: michelle
 */

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <vector>

#ifndef CODE_SOURCE_UTILS_H_
#define CODE_SOURCE_UTILS_H_

/**
 * based on example at
 * https://stackoverflow.com/questions/236129/how-do-i-iterate-over-the-words-of-a-string
 */
std::vector<std::string> split(const std::string &text, char sep) {
	std::vector<std::string> tokens;
	std::size_t start = 0, end = 0;
	while ((end = text.find(sep, start)) != std::string::npos) {
		tokens.push_back(text.substr(start, end - start));
		start = end + 1;
	}
	tokens.push_back(text.substr(start));
	return tokens;
}

#endif /* CODE_SOURCE_UTILS_H_ */

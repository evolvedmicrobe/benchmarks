//#include <cmath>
//#include "openlibm.h"
#include <stdio.h>
#include "fast_log.h"


unsigned int m_z = 50;
unsigned int m_w = 2131212;

double runif()
{
    m_z = 36969 * (m_z & 65535) + (m_z >> 16);
    m_w = 18000 * (m_w & 65535) + (m_w >> 16);
    unsigned int u = (m_z << 16) + m_w;
    return (u + 1.0) * 2.328306435454494e-10;
}

int main() {
	double q = 0.0;
	for(int i = 0; i < 100000000; i++) {
		double u = runif();
		double t = log(u);
		q += t;
	}
	printf("%f", q);
	return (int)q;
}


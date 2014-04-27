#include <iostream>
#include <fstream>
#include <cmath>
#include <cstdlib>
#include <vector>
#define N 3 
class RadNeuro {
	private:
		double nu, n, lambda, drob;
		double C1, C2, sigma;
		std::vector<double> vx1, vx2, v;
	public:
		RadNeuro(){
			nu = 0.08;
			n = 0.5;
			lambda = 1;
			drob = 0.7;
			C1 = C2 = 1;
			sigma = 1;
		}
		void teach(std::ofstream &out){
			std::ifstream sample("blue.txt");
			double x1,x2,value;
			while(sample >> x1 >> x2 >> value){
				vx1.push_back(x1);
				vx2.push_back(x2);
				v.push_back(value);
			}
			for(int p = 1; p < v.size(); ++p)
				calculate(out, p);
			std::cout << calcValue(4, 8) << std::endl;
		}
		double calcValue(double x1, double x2){
			return exp( - (pow (x1 - C1, 2) + pow(x2 - C2, 2))/ ( 2 * pow(sigma, 2)));
		}
		double functionValue(int p, double c1, double c2, double s){
			double result = 0;
			for(int i = 0; i < p; i++){
				result += pow(exp(-(pow(vx1[i] - c1, 2) + pow(vx2[i] - c2, 2)) / (2.0 * pow(s, 2))) - v[i],2);
			}
			result *= 0.5;
			return result;
		}
		double gradC1(int p, double c1, double c2, double s){
			double result = 0;
			for(int i = 0; i < p; i++){
				double expval = -(pow(vx1[i] - c1, 2) + pow(vx2[i] - c2, 2)) / (2.0 * pow(s, 2));
				result += exp(expval) * (exp(expval) - v[i]) * (vx1[i] - c1) / pow(s, 2);
			}
			return result;
		}
		double gradC2(int p, double c1, double c2, double s){
			double result = 0;
			for(int i = 0; i < p; i++){
				double expval = -(pow(vx1[i] - c1, 2) + pow(vx2[i] - c2, 2)) / (2.0 * pow(s, 2));
				result += exp(expval) * (exp(expval) - v[i]) * (vx2[i] - c2) / pow(s, 2);
			}
			return result;
		}
		double gradS(int p, double c1, double c2, double s){
			double result = 0;
			for(int i = 0; i < p; i++){
				double expval = -(pow(vx1[i] - c1, 2) + pow(vx2[i] - c2, 2)) / (2.0 * pow(s, 2));
				result += exp(expval) * (exp(expval) - v[i]) * (pow(vx2[i] - c2,2) + pow(vx1[i] - c1,2)) / pow(s, 3);
			}
			return result;
		}
		void calculate(std::ofstream& out, int p){
			double gC1, gC2, gS, C1r, C2r, Sr, C1r1, C2r1, Sr1, Er, Er1, gLength;
			while(1){
				C1r = C1;
				C2r = C2;
				Sr = sigma;
				gC1 = gradC1(p, C1r, C2r, Sr);
				gC2 = gradC2(p, C1r, C2r, Sr);
				gS = gradS(p, C1r, C2r, Sr);
				gLength = sqrt(pow(gC1, 2) + pow(gC2, 2) + pow(gS, 2));
				C1r1 = C1r - lambda * gC1/gLength;
				C2r1 = C2r - lambda * gC2/gLength;
				Sr1 = Sr - lambda * gS/gLength;
				Er = functionValue(p, C1r, C2r, Sr);
				Er1 = functionValue(p, C1r1, C2r1, Sr1);
				if((Er - Er1) < (0.5 * lambda * gLength))
					lambda *= drob;
				C1 = C1r1;
				C2 = C2r1;
				sigma = Sr1;
				if(fabs(Er - Er1) < 0.0000001)
					break;
			}
			C1 += nu * (vx1[p] - C1);
			C2 += nu * (vx2[p] - C2);
			std::cout << C1 << " " << C2 << " " << sigma << " " << vx1[p] << " " << vx2[p] << " " << v[p] << std::endl;
			writeToPlot(out, C1, C2, sigma);
			C1 = C2 = sigma;

		}

		void writeToPlot(std::ofstream &out, double c1, double c2, double sigma){
			out << "c1=" << c1 << "\n";
			out << "c2=" << c2 << "\n";
			out << "sigma=" << sigma << "\n";
			out << "unset surface \n";
			out << "set contour \n";
			out << "set multiplot \n";
			out << "splot exp(-(((x-c1)**2 + (y - c2)**2)/(2*sigma**2) )) \n";
			out << "unset contour \n";
			out << "set surface \n";
			out << "splot \"blue.txt\" using 1:2:3 with points lt rgb\"blue\"\n";
			out << "unset multiplot \n";
			out << "pause 0.5 \n\n";

		}
};
int main(){
	std::ofstream out("plot");
	out << "set size ratio 1 \n";
	out << "set isosample 50,50 \n";
	out << "set view map \n";
	out << "unset key \n";
	out << "set grid \n";
	out << "set title \"Learning process\" font \"Helvetica,18\\\" \n";
	out << "set xrange [-1:12] \n";
	out << "set yrange [-1:12] \n";
	out << "set cntrparam levels discrete 0.4 \n";
	out <<"splot \"blue.txt\" using 1:2:3 with points lt rgb \"blue\" \n";
	out << "pause 0.5 \n";
	RadNeuro *neuro = new RadNeuro();
	neuro->teach(out);
	out.close();
	system("gnuplot -persist plot");
	return 0;
}

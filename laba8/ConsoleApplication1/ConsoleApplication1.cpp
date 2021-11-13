#include <cmath>
#include <stdio.h>
#include <conio.h>
using namespace std;
int main()
{
    float a, b, c, x, x1, x2, D;
    printf("Input a = ");
    scanf_s ("%f", &a);
    printf("\n Input b = ");
    scanf_s ("%f", &b);
    printf("\n Input c = ");
    scanf_s ("%f", &c);
    D = pow(b, 2) - 4 * a * c;
    if (D < 0) 
    {
        printf(" No Real Roots");
        exit;
        return 0;
    }
    else
    {
        x = -b / (2 * a);
        if (D == 0)
        {
            printf("\n Two Equal Roots :");
            printf("\n x1 = x2 = %f", x);
            exit;
            return 0;
        }
        x2 = sqrt(D) / (2 * a);
        x2 = x - x2;
        printf("\n Two Different Roots :");
        printf("\n x1 = %f", x1);
        printf("\n x2 = %f", x2);
        exit;
    }
}
// ConsoleApplication1.cpp : This file contains the 'main' function. Program execution begins and ends there.
//



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
    // Обчислення дискримінанта (pow – функція, яка поверне значення b до квадрату)
    D = pow(b, 2) - 4 * a * c;
    if (D < 0) // якщо дискримінант від'ємний то вивести відповідне повідомлення
    {
        printf("No Real Roots");
        _getch(); // затримання показу вікна з результатом
        return 0;
    }
    else
    {
        x = -b / (2 * a);
        if (D == 0)
        {
            printf("Two Equal Roots : \n");
            printf("x1 = x2 = %f", x);
            _getch(); // затримання показу вікна з результатом
            return 0;
        }
        x2 = sqrt(D) / (2 * a); // (sqrt – функція, яка поверне корінь квадратний числа D)
        x1 = x2 + x;
        x2 = x - x2;
        printf("\n Two Different Roots :");
        printf("\n x1 = %f", x1);
        printf("\n x2 = %f", x2);
        _getch(); // затримання показу вікна з результатом
        return 0;
    }
}

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file

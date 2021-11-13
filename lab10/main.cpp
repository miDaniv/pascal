#include <iostream>
#include <cmath>

double func(const double arg)
{
    return arg;
}

double step(const double a, const double b, const unsigned int total)
{
    return (b - a) / total;
}

double sum(const unsigned int total_count, double start_point, const double step)
{
    double sum{0};

    for (unsigned int i = 0; i < total_count; ++i)
    {
        sum += func(start_point);
        start_point += step;
    }

    return sum;
}

double riemannSum(const double a, const double b, const unsigned int total)
{
    const double h = step(a, b, total);
    return h * sum(total, a + h / 2, h);
}

double trapezoidalRule(const double a, const double b, const unsigned total)
{
    const double h = step(a, b, total);
    return h * 0.5 *(func(a) + func(b) + 2.0 * sum(total - 1, a + h, h));
}

double SimpsonsRule(const double a, const double b, const unsigned total)
{
    const double h = step(a, b, total);
    return h * (func(a)+ func(b) + 4.0 * sum(total, a + h / 2.0, h) + 2.0 * sum(total - 1, a + h, h)) / 6.0;
}

int main()
{
    double a, b;
    std::cin >> a >> b;

    unsigned int total;
    std::cin >> total;

    std::cout << riemannSum(a, b, total) << "\n" << trapezoidalRule(a, b, total) << "\n" << SimpsonsRule(a, b, total);
}

#include <iostream>

extern "C" void bubblesort(long long a[], int length);

using namespace std;

int main() {
    long long array[] = {9,8,7,6,5,4,3,2,1};
    bubblesort(array, 9);

    for (int i = 0; i < 9; ++i) {
        cout << array[i] <<endl;
    }

    cout << "OK" <<endl;
    return 0;
}

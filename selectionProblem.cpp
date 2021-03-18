#include<iostream>
#include<fstream>
#include<sstream>
#include<string>

using namespace std;

int testArray[10] = {2,11,4,3,5,6,8,7,10,9};

void printArray(int array[], int arrSize, int newlineSize) {
    for(int i = 0; i < arrSize; i++) {
        cout << array[i] << " ";
        if ((i+1) % newlineSize == 0 && i != 0) {
            cout << "\n";
        }
    }
    cout << "\n";
}

// RANDOMIZED SELECT START //
int Partition(int A[], int p, int r) {
    int x = A[r];
    int i = p - 1;
    for(int j = p; j < r-1; j++) {
        if (A[j] <= x) {
            i = i + 1;
            int temp = A[i];
            A[i] = A[j];
            A[j] = temp;
        }
    }
    int temp = A[i+1];
    A[i+1] = A[r];
    A[r] = temp;
    return i + 1;
}

int RandomizedPartition(int A[], int p, int r) {
    int i = rand()%(r-p + 1) + p;
    int temp = A[r];
    A[r] = A[i];
    A[i] = temp;
    return Partition(A, p, r);
}

int RandomizedSelect(int A[], int p, int r, int i) {
    if (p == r) {
        return A[p];
    }
    int q = RandomizedPartition(A, p, r);
    int k = q - p + 1;
    if (i == k) {
        return A[q];
    } else if (i < k) {
        return RandomizedSelect(A, p, q-1, i);
    } else {
        return RandomizedSelect(A, q+1, r, i-k);
    }
}
// RANDOMIZED SELECT END //

int main() {
    const int dataSize = 1001;
    int dataArray[dataSize];
    fstream dataSet("small.csv");

    if (dataSet.is_open()) {
        for(int i = 0; i < dataSize; i++) {
            string lineElement;
            getline(dataSet, lineElement, ',');
            dataArray[i] = stoi(lineElement);
        }
    }

    //printArray(dataArray, dataSize, 20);

    cout << RandomizedSelect(testArray, 0, 11, 9);

    return 0;
}

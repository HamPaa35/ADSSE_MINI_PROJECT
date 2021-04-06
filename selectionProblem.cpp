#include<iostream>
#include<fstream>
#include<sstream>
#include<string>
#include<time.h>
#include<chrono>
#include<ctime>

using namespace std;
using namespace std::chrono;

int testArray[10] = {10,9,8,7,6,5,4,3,2,1};
int testArray2[10] = {10,9,8,7,6,5,4,3,2,1};

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
int Partition(int PArray[], int Pstart, int Pend) {
    int x = PArray[Pend];
    int i = Pstart - 1;
    for(int j = Pstart; j < Pend; j++) {
        if (PArray[j] <= x) {
            i = i + 1;
            int temp = PArray[i];
            PArray[i] = PArray[j];
            PArray[j] = temp;
        }
    }
    int temp = PArray[i+1];
    PArray[i+1] = PArray[Pend];
    PArray[Pend] = temp;
    return i+1;
}

int RandomizedPartition(int RPArray[], int RPstart, int RPend) {
    int i = rand()%(RPend-RPstart + 1) + RPstart;
    int temp = RPArray[RPend];
    RPArray[RPend] = RPArray[i];
    RPArray[i] = temp;
    return Partition(RPArray, RPstart, RPend);
}

int RandomizedSelect(int Array[], int start, int end, int target) {
    if (start == end) {
        return Array[start];
    }
    int pivot = RandomizedPartition(Array, start, end);
    int k = pivot - start+1;
    if (target == k) {
        return Array[pivot];
    } else if (target < k) {
        return RandomizedSelect(Array, start, pivot-1, target);
    } else {
        return RandomizedSelect(Array, pivot+1, end, target-k);
    }
}
// RANDOMIZED SELECT END //


//Gnome sort is different from insertion sort, since it does not remember where it came from, insertion sort remembers where it came from, and jumps dirrectly to this point after swapping
void GnomeSort (int arrayToSort[], int dataSize){
    int currentPos = 0;
    //int sizeOfArray = sizeof(arrayToSort)/sizeof(*arrayToSort);
    while (currentPos < dataSize)
    {
        if (currentPos == 0 || arrayToSort[currentPos] >= arrayToSort[currentPos-1]){
            currentPos += 1;
        }
        else{
            swap(arrayToSort[currentPos], arrayToSort[currentPos-1]);
            currentPos -= 1;
        }
    }
}

int main() {
    //Setup and load of the file containing the dataset
    steady_clock::time_point setup_start = steady_clock::now();
    const int dataSize = 1001;
    int dataArray[dataSize];
    int dataArray2[dataSize];
    fstream dataSet("small.csv");

    if (dataSet.is_open()) {
        for(int i = 0; i < dataSize; i++) {
            string lineElement;
            getline(dataSet, lineElement, ',');
            dataArray[i] = stoi(lineElement);
            dataArray2[i] = stoi(lineElement);
        }
    }
    //End timing of the setup
    steady_clock::time_point setup_stop = steady_clock::now();
    auto setup_duration = setup_stop - setup_start;
    cout << duration <double, milli> (setup_duration).count()<< endl;

    //What element to find in the selection problem
    int ithElement = 2;
    
    //Run random select
    steady_clock::time_point rand_start = steady_clock::now();
    cout << "Randomized select: " << RandomizedSelect(dataArray, 0, 1000, ithElement) << endl;
    
    //Time random select
    steady_clock::time_point rand_stop = steady_clock::now();
    auto rand_duration = rand_stop - rand_start;
    cout << "rand dur "<< duration <double, milli> (rand_duration).count();

    //Run Gnome sort
    steady_clock::time_point gnome_start = steady_clock::now();
    GnomeSort(dataArray2, 1001);

    cout << "\n" << "Gnome sort: " << dataArray2[ithElement-1] << endl;
    
    //Time Gnome sort
    steady_clock::time_point gnome_stop = steady_clock::now();
    auto gnome_duration = gnome_stop - gnome_start;
    cout << "Gnome dur " << duration <double, milli> (gnome_duration).count() << endl;

    //cin.ignore();
    //int ithElement = 1000;    
    //cout << "Randomized select: " << RandomizedSelect(dataArray, 0, dataSize-1, ithElement);
    //GnomeSort(dataArray2, dataSize);
    //cout << "\n" << "Gnome sort: " << dataArray2[ithElement-1];
    return 0;
}

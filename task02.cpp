#include <iostream>
#include <algorithm>

int main(int argc, char* argv[]) {
    auto N = atoi(argv[1]);
    auto D = atoi(argv[2]);
    auto result = 0u;
    if (N & 1) {
        result += ((N >> 1) + 1) * D * N;
    } else {
        result += (N >> 1) * N * D + ((N * D) >> 1);
    }
    
    std::cout << "result = " << result << std::endl;
    return result;
}
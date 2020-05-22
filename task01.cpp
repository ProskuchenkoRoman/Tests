#include <iostream>
#include <algorithm>

int main(int argc, char* argv[]) {
    if (argc != 3) {
        std::cout << "Wrong number of arguments" << std::endl;
        return 0;
    }
    auto N_str = std::string(argv[1]);
    if (std::any_of(N_str.begin(), N_str.end(), isalpha)) {
        std::cout << "Wrong argument N = " << std::endl;
        return 0;
    }
    auto K_str = std::string(argv[2]);
    if (std::any_of(K_str.begin(), K_str.end(), isalpha)) {
        std::cout << "Wrong argument K = "<< K_str << std::endl;
        return 0;
    }
    auto N = std::stoi(N_str);
    auto K = std::stoi(K_str);
    return N / (K + 1);
}
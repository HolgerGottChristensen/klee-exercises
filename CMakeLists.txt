cmake_minimum_required(VERSION 3.22)
project(equivalence C)

set(CMAKE_C_STANDARD 11)

include_directories(/opt/homebrew/Cellar/klee/2.3_2/include)

add_executable(equivalence
        combined_ace_arbiter.c
        Regexp.c
        color.c
        load.c
        get_sign.c
        ace_arbiter_1.c
        ace_arbiter_2.c
        ace_arbiter_3.c)

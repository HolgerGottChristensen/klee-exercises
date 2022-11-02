clang -I $KLEE/include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone  combined_ace_arbiter.c

klee --only-output-states-covering-new --external-calls=all combined_ace_arbiter.bc
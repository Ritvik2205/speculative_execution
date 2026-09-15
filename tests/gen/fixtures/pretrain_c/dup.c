/* Same shape as add_loop() in utils_math.c (different names/variables) --
   used to exercise the sequence-content dedup path: a real compiler emits
   byte-identical instructions for these two functions since the codegen
   depends only on parameter types/order, not on the source names. */
int add_loop_dup(int x, int y) {
    int sum = 0;
    for (int i = 0; i < y; i++) {
        sum += x;
    }
    return sum;
}

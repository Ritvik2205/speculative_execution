typedef unsigned long size_t;

unsigned int hash_bytes(const unsigned char *p, size_t n) {
    unsigned int h = 2166136261u;
    for (size_t i = 0; i < n; i++) {
        h ^= p[i];
        h *= 16777619u;
    }
    return h;
}


void increment_loop(void) {
	for (long long i = 0; i < 10000; i++);
}

void infinite_loop(void) {
	for (;;);
}

char* str_copy(char* src, char* dst, long long len) {
	for (long long i; i < len; i++) {
		dst[i] = src[i];
	}
	return dst;
}

void to_analyze(void) {

#define STRLEN 10000
	
	char src[STRLEN], dst[STRLEN];
	
	for (long long i; i < STRLEN; i++) 
		src[i] = (char) i;
	src[STRLEN-1] = '\0';

	char* dst_new = str_copy(src, dst, STRLEN);
}


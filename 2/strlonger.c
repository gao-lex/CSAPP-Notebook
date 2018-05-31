size_t strlen(const char* s);

int strlonger(char *s,char*t){
    return (strlen(s)-strlen(t)) > 0;
}

int main() {
    int a = 5;
    int b = 10;
    int c = 15;
    
    a = a + 3;  // ADDI
    b = b + 7;  // ADDI
    c = c - 2;  // ADDI
    a = a + 10; // ADDI

    c = a + b;  // ADD (R-type)
    b = c - a;  // SUB (R-type)

    return 0;
}

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
add bl, -59
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and eax, 1913354318
bts ebx, 189
xor bx, -65
sub bl, cl
xor bl, dil
cmp edx, -95
adc bl, cl
test al, 72
adc al, -86
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
xor rax, 944027678
and sil, bl
cmp al, 105
sbb al, 57
cmp cl, al
test dil, -83
and al, -124
dec bl
xor al, dil
cmp al, cl
cmp sil, al
or dil, bl
sbb dil, 100
or si, -84
test al, 27
mov cl, bl
cmp al, bl
mov sil, al
adc cl, bl
bt ax, si
test al, 72
or ebx, -78
test sil, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, -1143711697
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
cmp al, al
lea ecx, qword ptr [rcx]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
cmovnbe edi, ebx
lea ebx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsf di, si
cmovnb eax, edx
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
xor al, 14
xchg dil, cl
adc bx, 84
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
xor al, 45
test sil, 29
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
add si, ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
add al, -117 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edx
adc bl, sil
mul rdx
cmp rdi, 65
xor bl, dil
xchg bl, al
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 33
or dl, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

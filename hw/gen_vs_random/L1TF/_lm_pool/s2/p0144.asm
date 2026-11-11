.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
lea ax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 89
xor dl, dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
xor al, sil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

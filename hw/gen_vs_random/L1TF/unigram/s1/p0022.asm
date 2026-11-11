.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp di, -78
cmovo rbx, rbx
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
setns bl
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
add cl, -5 # instrumentation
adc bl, cl
and rdx, 88
setns dl
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 58
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
or dx, 1 # instrumentation
dec rsi
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 96
xor al, sil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx, rdx, 96
add dl, 52 # instrumentation
sets cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
imul rax, rsi
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 5
setns dl
lea rsi, qword ptr [rsi + rcx]
imul edx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 43
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
xchg bl, bl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and cl, cl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

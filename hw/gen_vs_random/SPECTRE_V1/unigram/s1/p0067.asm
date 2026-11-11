.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
inc rdx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and sil, dil
add al, 3
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
imul ax, dx, 76
setnb dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
imul al
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 91
xor ecx, 90
neg rax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor cl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

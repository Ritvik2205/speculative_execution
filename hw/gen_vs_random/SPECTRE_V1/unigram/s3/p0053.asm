.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
inc rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
add bl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
setns bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, -77
add cl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -37
cmovnz dx, di
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
add bl, bl
xor edx, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

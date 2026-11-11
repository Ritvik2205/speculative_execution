.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edx, eax
and cx, di
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test rdi, rax
lea cx, qword ptr [rax + rbx + 43]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
cmovnp rdi, rdi
lea ax, qword ptr [rdi + rsi + 32]
lea eax, qword ptr [rdi + rax + 77]
add al, dil
dec di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 71
add bl, 68
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
cmovnb ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

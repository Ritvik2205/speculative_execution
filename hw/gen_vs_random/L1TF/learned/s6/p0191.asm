.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 96
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 21
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 99
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rdx
cmp cl, -89
add cl, 88
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

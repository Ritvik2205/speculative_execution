.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
bt dx, cx
lea rcx, qword ptr [rbx + rdi + 46]
add dl, cl
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 93
xor al, 14
lea rdx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
mov dil, bl
imul rsi, rbx
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 41
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rsi
bt rsi, rdx
sbb al, 96
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
lea ebx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

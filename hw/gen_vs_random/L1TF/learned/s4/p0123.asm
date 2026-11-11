.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
add dl, 96
sub bl, al
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
cmovo cx, ax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx
or ecx, eax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 14
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 71
lea rdx, qword ptr [rax + rax + 9]
and al, cl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdx], ax
test bl, -8
js .bb_0.1
jmp .exit_0
.bb_0.1:
bswap rcx
and sil, 11
sub ecx, 13
lea edx, qword ptr [rdx + rsi + 21]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

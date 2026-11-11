.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
cmovno di, bx
and rcx, 27
bt eax, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or bl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
and sil, -90
or bl, al
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

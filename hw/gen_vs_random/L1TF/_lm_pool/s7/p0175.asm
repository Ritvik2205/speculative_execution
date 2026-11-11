.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 60
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dl, 9
sbb sil, dil
jmp .bb_0.1
.bb_0.1:
or al, -48
sub al, -75
and cl, cl
and ax, 37
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovbe eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

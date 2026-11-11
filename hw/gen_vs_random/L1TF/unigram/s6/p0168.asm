.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg sil, sil
and cl, 23
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
sub bl, 15
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
sub sil, al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
cmovns di, si
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
sub ebx, ebx
inc ebx
or edx, eax
add esi, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

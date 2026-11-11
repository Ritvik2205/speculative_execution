.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
or bl, 114
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and cl, sil
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

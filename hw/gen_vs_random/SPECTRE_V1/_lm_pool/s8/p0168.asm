.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
sbb dil, -106
lea bx, qword ptr [rdx + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sbb bl, -41
jmp .bb_0.1
.bb_0.1:
cmp esi, 77
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
sub al, bl
and al, 33
lea rdx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

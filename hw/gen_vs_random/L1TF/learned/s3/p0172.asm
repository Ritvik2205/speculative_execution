.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
or bl, dl
adc sil, 77
and bl, 89
add bl, cl
sub al, cl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rsi + rdx + 60]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
add al, -46
adc eax, 457059541
test ax, 13284
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

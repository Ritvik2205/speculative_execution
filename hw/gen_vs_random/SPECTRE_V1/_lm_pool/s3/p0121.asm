.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
lea di, qword ptr [rax]
sub al, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
add dil, 72
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

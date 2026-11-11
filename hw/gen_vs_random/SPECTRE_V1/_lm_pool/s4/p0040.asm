.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
setnle al
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
sbb eax, 99727957
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
sub al, dl
sub dil, cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and cl, bl
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

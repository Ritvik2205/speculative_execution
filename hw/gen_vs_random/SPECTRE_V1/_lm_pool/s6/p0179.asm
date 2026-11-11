.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
lea edi, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dil, cl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

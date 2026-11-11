.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sub dil, dl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 20
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea di, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
lea cx, qword ptr [rdx + rbx + 51]
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
add al, dl
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

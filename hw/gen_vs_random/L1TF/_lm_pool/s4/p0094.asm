.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
lea rcx, qword ptr [rsi + rsi]
or rdx, 11
bts edx, 92
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test bl, 84
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

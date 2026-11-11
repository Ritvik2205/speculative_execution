.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 80
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 76
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
xor rcx, 23
and bl, bl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 32
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

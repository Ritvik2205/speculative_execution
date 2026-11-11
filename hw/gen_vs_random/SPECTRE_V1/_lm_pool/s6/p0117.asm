.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 48
lea ebx, qword ptr [rdi]
xor bl, -38
sbb al, al
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -126
add al, -47
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
btr di, ax
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
xor sil, al
add dx, -103
and dil, -93
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
jnz .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

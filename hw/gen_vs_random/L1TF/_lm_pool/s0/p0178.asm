.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 25
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
sub bl, 15
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
test bl, 45
or rdx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

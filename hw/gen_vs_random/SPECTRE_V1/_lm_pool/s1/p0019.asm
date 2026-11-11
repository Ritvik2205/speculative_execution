.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, sil
add dil, 72
cmp bl, sil
adc bl, -73
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
cmovs ax, bx
add cl, al
and bl, -65
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
sub dil, -32
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

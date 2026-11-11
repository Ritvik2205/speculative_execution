.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 59
cmp rdx, -19
sub cl, -21
sbb cl, 105
xchg bl, sil
add sil, bl
jmp .bb_0.1
.bb_0.1:
test sil, 13
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
test bl, -8
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
xor dx, -128
and dil, 98
cmovle di, dx
xchg dl, cl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
add cl, sil
test cl, -33
sbb al, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

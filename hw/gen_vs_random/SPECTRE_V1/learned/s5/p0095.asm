.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
test dil, -116
and dl, -109
and al, dil
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rcx]
test cl, -24
cmp dil, dl
xchg dl, bl
lea bx, qword ptr [rcx + rdi]
xor eax, -105
sbb dl, dil
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

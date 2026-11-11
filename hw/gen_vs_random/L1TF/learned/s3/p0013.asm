.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 24
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdx]
and al, -68
and dl, 59
sbb al, -23
and dl, cl
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

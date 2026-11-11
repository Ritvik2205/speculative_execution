.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -126
add al, al
sub cl, -21
sbb dil, cl
cmp cl, bl
lea ax, qword ptr [rdi + rcx + 6]
sbb ebx, 68
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bts bx, 59
sbb dil, -106
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

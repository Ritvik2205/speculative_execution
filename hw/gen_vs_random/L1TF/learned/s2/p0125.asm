.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
neg cl
sbb cl, -11
sbb dil, cl
add cl, dil
sub cl, bl
test dil, -126
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
sbb al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

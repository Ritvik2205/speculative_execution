.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 59
add al, -13
cmp rbx, 62
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
cmp dl, 119
sub cl, -21
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
sbb al, dil
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

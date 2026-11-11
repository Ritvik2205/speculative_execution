.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -109
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -43
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or rax, -1571963467
add bl, -95
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

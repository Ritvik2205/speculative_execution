.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -48
or esi, -74
xchg rbx, rcx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add bl, 70
or rsi, -119
sbb dl, cl
add dl, dl
sbb al, bl
test cl, -62
mov dil, cl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

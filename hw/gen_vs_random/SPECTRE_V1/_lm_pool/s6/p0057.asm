.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
sbb sil, -78
or cl, dil
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
cdq
add cl, cl
lea rcx, qword ptr [rdi + rbx + 86]
lea rbx, qword ptr [rdx]
adc dil, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

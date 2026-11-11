.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
mov dil, al
sbb al, 66
sub cl, -21
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
sbb ebx, 60
sub dil, dl
lea cx, qword ptr [rax + rdi]
add cl, al
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

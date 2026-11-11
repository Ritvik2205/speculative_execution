.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
cmp dl, al
sbb al, -114
mov bl, cl
or bl, 90
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, bl
cmp sil, 25
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

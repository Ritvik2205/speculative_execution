.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
or ebx, ecx
and ax, -10351
xor ax, -23364
xor cl, bl
and sil, -9
jmp .bb_0.1
.bb_0.1:
test cl, 54
bt dx, ax
xor bl, -102
and al, bl
and dl, cl
xor sil, 27
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
test rcx, -613256812
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

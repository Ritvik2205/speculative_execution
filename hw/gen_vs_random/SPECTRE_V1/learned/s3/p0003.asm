.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
cmp rax, -72548874
add dl, 47
and al, 33
sbb cl, bl
xor dl, sil
sbb al, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
add al, sil
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

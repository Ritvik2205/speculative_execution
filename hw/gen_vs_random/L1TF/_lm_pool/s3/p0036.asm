.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
test cl, 29
test dil, -126
xor dl, 64
and al, dl
jmp .bb_0.1
.bb_0.1:
and bl, bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 83
add bl, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
bt rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

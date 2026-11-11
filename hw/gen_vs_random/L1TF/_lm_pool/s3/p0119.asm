.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, dx
lea ecx, qword ptr [rdx]
lea rax, qword ptr [rdx + rbx]
xor sil, al
and cl, dl
or al, -5
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx]
add bl, dil
xor al, sil
jmp .bb_0.2
.bb_0.2:
test rbx, rdi
xor dl, sil
and ax, 7954
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

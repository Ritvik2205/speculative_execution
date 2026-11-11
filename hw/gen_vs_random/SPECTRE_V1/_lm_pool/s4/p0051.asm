.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
add cl, -127
and ax, -22629
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
dec dx
mov bl, sil
cmovle bx, dx
or rax, -3
sbb cl, dl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 17
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

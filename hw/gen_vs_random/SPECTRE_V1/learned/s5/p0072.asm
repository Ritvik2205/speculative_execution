.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
mov dil, 23
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
cmp sil, al
and bl, al
sub dl, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, sil
and al, 33
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

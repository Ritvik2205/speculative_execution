.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb sil, al
and al, -54
add bl, -95
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ax, qword ptr [rcx + rdx + 26]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
lea ebx, qword ptr [rdi]
sub ax, -15315
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 49
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

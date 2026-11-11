.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb ecx, edi
or edi, 65
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb sil, bl
sub dil, dl
sbb al, bl
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
sbb dl, cl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add al, -13
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
sbb edi, 74
jnz .bb_0.4
jmp .exit_0
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

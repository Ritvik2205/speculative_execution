.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 67
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
mov cl, al
inc edx
test dl, -7
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

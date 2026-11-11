.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
bt eax, 78
add dil, -75
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
xchg cl, dl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
cmp al, -77
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

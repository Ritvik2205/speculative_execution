.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
lea ecx, qword ptr [rbx]
and rax, -1128038253
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
cmp cl, bl
btc cx, dx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or al, sil
lea rax, qword ptr [rcx + rbx + 6]
cmp dil, -78
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

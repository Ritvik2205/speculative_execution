.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
or eax, ebx
inc al
sub rax, -1628299544
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
cmovnp si, dx
and bl, 89
xor cl, 89
cmovnp ax, bx
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

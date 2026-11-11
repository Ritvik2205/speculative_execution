.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, dx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and ax, 339
xor dil, cl
not al
and cl, al
and dl, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
bt ax, dx
xor dil, al
xor dil, -124
or esi, -110
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

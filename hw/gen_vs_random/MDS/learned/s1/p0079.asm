.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
xor ax, -4010
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
test al, 91
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
test di, 42
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
xor cl, al
test al, dl
test eax, -1634766116
test eax, 424329527
cmovnp rax, rsi
and bl, dl
test cl, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

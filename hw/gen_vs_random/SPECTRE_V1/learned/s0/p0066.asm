.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
add rax, 913062684
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, -57
lea bx, qword ptr [rcx + rdx]
cmp dl, al
xor dil, cl
and cx, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

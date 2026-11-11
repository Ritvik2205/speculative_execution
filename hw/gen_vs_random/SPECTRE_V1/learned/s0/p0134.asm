.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
bts ax, 71
jmp .bb_0.1
.bb_0.1:
sub bl, sil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
cmp cl, al
cmovle rax, rbx
xor al, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

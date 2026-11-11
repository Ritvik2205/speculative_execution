.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
cmp ax, 7046
cmp rax, -1365488374
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

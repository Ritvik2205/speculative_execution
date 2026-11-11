.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
mov cl, sil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
add dl, sil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
sub sil, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test dl, -105
lea rcx, qword ptr [rdi + rax + 23]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

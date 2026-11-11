.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
setbe al
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 10
or rcx, rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
or sil, sil
and rcx, -29
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

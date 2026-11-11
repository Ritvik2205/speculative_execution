.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, -124
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 26
test cl, 66
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
cmovb rcx, rsi
and bl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnle rcx, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
or dil, -57
xor al, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
cmovz rcx, rsi
cmovl rdi, rcx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and cl, bl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
cmovz rdx, rax
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
cmovl edi, eax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 82
add bl, -124 # instrumentation
setnz bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
bts edi, ecx
lea dx, qword ptr [rbx + rdx + 42]
add dl, 125 # instrumentation
cmovbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

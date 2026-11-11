.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
cwd
lea bx, qword ptr [rax + rbx]
lea dx, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 60
lea rdx, qword ptr [rdx]
mov sil, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor esi, ebx
test rbx, 5
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
cmovle rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
bswap rbx
sbb dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

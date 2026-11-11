.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
xor ebx, 13
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
test rcx, rbx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
cmovbe rax, rax
not rdi
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
xor al, sil
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
test sil, -55
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

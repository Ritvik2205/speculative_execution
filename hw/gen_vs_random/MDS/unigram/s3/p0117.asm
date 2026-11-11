.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
or sil, sil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 21
cmovbe edx, edi
and eax, -829294476
and dil, -39
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovns ax, cx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
or sil, -78
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

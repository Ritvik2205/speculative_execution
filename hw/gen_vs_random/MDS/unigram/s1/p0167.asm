.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and cl, bl
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and bl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and dil, cl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
cmovl esi, edx
cmovz rbx, rax
and cl, 49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

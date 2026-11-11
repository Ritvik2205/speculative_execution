.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 2
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 45
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 96
and cx, ax
jmp .bb_0.1
.bb_0.1:
or cl, 10
cmovz ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
or bl, sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and bx, -21
bt esi, 10
bt rax, rsi
or eax, -1642752131
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
btc edx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 32
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
btr rdx, 77
cmovbe eax, ebx
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and dil, 125
and rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 23
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
cmovp dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

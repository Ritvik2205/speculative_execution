.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 77
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or al, 24
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
or bl, sil
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and rsi, 55
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or sil, sil
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

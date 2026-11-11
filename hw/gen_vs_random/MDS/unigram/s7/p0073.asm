.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and sil, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
btr ebx, edi
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
cmovnl cx, si
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 95
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
not dl
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
or dil, -78
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

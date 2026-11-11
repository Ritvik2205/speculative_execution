.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 100
or al, cl
cmovle esi, ebx
btr rax, rax
and cl, -109 # instrumentation
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
xor edi, 38
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
adc ebx, 12
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and sil, 65
add dl, 31 # instrumentation
cmovnl cx, cx
bt rcx, rbx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
lea rdx, qword ptr [rsi + rsi + 30]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

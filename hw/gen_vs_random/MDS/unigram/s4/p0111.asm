.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor dl, 8
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and cl, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and cl, al
cmovo rbx, rbx
cmovnle rsi, rax
bts ax, di
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 38
xor sil, -46
cmovb cx, cx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and cl, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
btc rbx, 35
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

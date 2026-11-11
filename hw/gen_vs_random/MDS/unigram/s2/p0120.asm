.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
cmovle cx, cx
bt ax, 171
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and al, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 11
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
and dl, -33 # instrumentation
cmovns rsi, rsi
and bx, ax
and dl, -7
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 50
cmovnl eax, edi
cmovb esi, edi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and al, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

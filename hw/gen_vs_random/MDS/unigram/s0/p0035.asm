.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and cl, 112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
cmovz eax, eax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
test si, di
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
cmovbe edi, eax
btc cx, 115
jmp .bb_0.1
.bb_0.1:
xor rax, -270810088
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 40
test dl, -119
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and dl, -73
test dl, 27
and cl, -34 # instrumentation
cmovs rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

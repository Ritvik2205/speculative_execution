.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rdi, rdi
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
xor rbx, -51
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
btr di, 199
and cl, 122 # instrumentation
cmovnb rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and si, 19
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 38
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
bts rdx, 255
btc rbx, 53
and cl, -78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and al, 33 # instrumentation
cmovnle ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

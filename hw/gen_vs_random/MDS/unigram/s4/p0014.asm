.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
test dil, 46
test rsi, 19
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and edi, 23
and al, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
xor cx, -18
bts ecx, 184
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and bl, -6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], eax
xor al, 99
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and cl, -40 # instrumentation
cmovp ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

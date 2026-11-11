.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 35
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
btc cx, 115
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
btc rcx, rcx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmovnle rcx, rbx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
bts esi, 82
and bl, -116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
xor dl, 34
and dl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
btc rdx, 19
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
test ecx, -1843375753
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

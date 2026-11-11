.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 100
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
or ax, -7150
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovno edx, ecx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test edi, esi
test rdi, rdi
xor dl, -59
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 78
and al, -83 # instrumentation
cmovnp rsi, rcx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

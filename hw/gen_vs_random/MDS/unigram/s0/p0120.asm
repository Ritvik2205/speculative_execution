.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and bl, -5 # instrumentation
cmovnl ax, bx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor bl, -61
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
btc di, 233
xor dil, dil
cmovno rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
cmovs ecx, eax
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
cmovb cx, cx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
bts eax, eax
test rdi, 63
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

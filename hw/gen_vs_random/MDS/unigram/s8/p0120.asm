.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rax, -2058103810
cmovp eax, edx
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and cx, -8
and bl, -120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
cmovnp esi, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
btr ax, ax
xor al, al
or si, 94
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rsi
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

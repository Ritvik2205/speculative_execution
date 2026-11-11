.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, ax
xor dil, 8
btc si, 99
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and sil, 38 # instrumentation
cmovbe eax, esi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
or dil, -41
bts rsi, 206
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and bl, -5 # instrumentation
cmovnl si, di
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 54
bt esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

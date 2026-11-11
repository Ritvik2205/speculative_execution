.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, rcx
not sil
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
bts rsi, 221
test dl, -95
not rdi
and al, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
cmovnbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
or ax, -7150
btc esi, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
btr rax, 29
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 60 # instrumentation
cmovnl eax, esi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and bl, -5 # instrumentation
cmovnl ax, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 36
btc rax, 59
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
bts edx, 189
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
test si, 66
xor al, dil
or cx, 49
xor al, cl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
not sil
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
xor sil, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
cmovnbe rax, rcx
bt cx, 22
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
btc di, dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
xor cl, dl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
or dil, -76
or bl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
test cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and bl, -28 # instrumentation
cmovl rdx, rax
bts rbx, rcx
and bl, 120 # instrumentation
cmovnle eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

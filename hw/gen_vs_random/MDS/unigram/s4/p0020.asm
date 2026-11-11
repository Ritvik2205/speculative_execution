.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
cmovns cx, si
or cl, al
btc bx, 104
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
btr rdx, 97
and dil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
btr rdx, 41
xor edi, edi
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
or dl, dl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 62
bt rdi, rdi
bts rbx, rdx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

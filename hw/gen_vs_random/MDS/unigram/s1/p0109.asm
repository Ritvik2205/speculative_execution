.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and bl, 120 # instrumentation
cmovnle ebx, ebx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
cmovns cx, dx
or cx, 39
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
or dil, 16
test rbx, 67
xor sil, -126
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and bl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
xor ax, -16696
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
or si, 94
btr si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

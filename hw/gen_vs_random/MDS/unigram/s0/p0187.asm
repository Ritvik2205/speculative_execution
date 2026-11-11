.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 177
btc rax, 59
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
cmovnl eax, edx
bts dx, bx
and dl, al
test sil, -96
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 17
btr rax, 29
not rdi
xor al, 34
cmovns edx, ecx
btr bx, di
btc ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

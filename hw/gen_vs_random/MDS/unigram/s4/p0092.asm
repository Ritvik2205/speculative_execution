.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
cmovp edx, ecx
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts cx, si
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
or ax, -4635
xor dl, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
jmp .bb_0.1
.bb_0.1:
test dl, al
btc cx, di
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 53
xor sil, 31
or cx, 10
bts di, 21
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

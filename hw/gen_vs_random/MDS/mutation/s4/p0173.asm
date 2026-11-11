.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
bt cx, ax
bts si, di
btc esi, 199
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
xor al, 99
cmovnz rdi, rdx
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and al, 84
or al, -22
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and dl, -15 # instrumentation
cmovnp dx, dx
bts rsi, 221
or si, 94
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and cl, 8 # instrumentation
cmovnl rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

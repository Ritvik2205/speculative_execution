.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
cmovnz rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
bts si, di
or al, -24
and dl, -15 # instrumentation
cmovnp dx, dx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
bts rsi, 205
and al, -114
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bt cx, ax
and cl, 8 # instrumentation
cmovnl rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
xor al, -19
or si, 94
btc esi, 199
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

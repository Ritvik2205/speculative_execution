.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -52
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
cmovnz rdi, rdx
btc esi, 199
or si, -12
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and dl, -15 # instrumentation
cmovnp dx, dx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
xor al, 34
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and al, 35
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bts si, di
and cl, 8 # instrumentation
cmovnl rdx, rsi
or al, 25
bts rsi, 205
bt cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

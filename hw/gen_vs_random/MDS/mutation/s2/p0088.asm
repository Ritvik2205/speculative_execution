.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 121 # instrumentation
bt rdi, 138
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
or dl, dl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
or dl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovb di, si
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovp ebx, esi
jmp .bb_0.1
.bb_0.1:
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
bts rsi, 221
and dl, -15 # instrumentation
cmovnp dx, dx
bts si, di
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
xor al, 99
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and cl, 8 # instrumentation
cmovnl rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and al, 84
btc esi, 199
or si, -12
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
cmovnz rdi, rdx
bt cx, ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

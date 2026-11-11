.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, 77
and dx, 72
or esi, edi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
not edx
bts rcx, 115
xor si, ax
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
btr eax, ecx
and rsi, 70
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
cmovo ax, di
or dl, -115
and rax, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rax]
btr dx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

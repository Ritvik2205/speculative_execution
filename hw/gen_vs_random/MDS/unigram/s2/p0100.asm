.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe eax, edi
and al, -86 # instrumentation
cmovns di, cx
cmovno rbx, rsi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
or dl, -89
test rax, -2052112368
and bx, 51
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
and bl, 120 # instrumentation
cmovnp dx, cx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
bts di, 37
and al, 20 # instrumentation
cmovp ax, cx
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
not al
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
btc eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

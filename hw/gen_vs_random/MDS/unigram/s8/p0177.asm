.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ax, dx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
or dl, dil
or edx, -1
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 30
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test al, 66
or al, bl
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and ax, -10351
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
btc edx, 75
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
cmovns bx, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

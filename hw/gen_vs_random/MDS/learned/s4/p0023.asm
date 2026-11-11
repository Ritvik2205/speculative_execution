.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, ax
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
xor di, -116
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
xor cl, al
cmovno ecx, edx
xor cl, bl
or ax, 6575
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and bx, dx
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
cmovs edx, edi
or rsi, 11
and si, bx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

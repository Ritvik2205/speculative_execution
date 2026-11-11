.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
btc edx, 75
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 38
and cl, 91 # instrumentation
cmovle rax, rax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and si, di
or bx, 37
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
btc edx, 75
btc ecx, 76
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
cmovp dx, ax
test di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

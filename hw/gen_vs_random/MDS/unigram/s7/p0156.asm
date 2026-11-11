.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
bt rbx, rax
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or dl, bl
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and cl, -76 # instrumentation
cmovl bx, cx
test ebx, -961564216
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and sil, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and esi, 38
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
and dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

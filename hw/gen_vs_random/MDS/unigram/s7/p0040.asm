.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
cmovl rax, rbx
test rcx, -613256812
and ax, -122
and eax, -85386306
and rsi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
btc ax, si
cmovb rcx, rcx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
xor dl, cl
and rdi, 49
cmovns edi, edi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
or ax, 30524
xor ax, bx
test edi, edx
and cx, -2
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

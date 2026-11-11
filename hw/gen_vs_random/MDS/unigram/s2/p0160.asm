.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
btr dx, bx
or dl, 85
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
cmovnle si, di
test rcx, -613256812
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
or al, bl
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or dl, dil
xor rcx, rdx
cmovl rax, rsi
or edx, ecx
cmovz cx, bx
btr ecx, ecx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

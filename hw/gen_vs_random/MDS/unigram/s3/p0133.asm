.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
xor al, cl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
bt ax, 76
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
or esi, -110
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and dil, -39
cmovnbe rbx, rbx
cmovnle bx, dx
bt esi, ecx
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
cmovnbe rax, rdx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

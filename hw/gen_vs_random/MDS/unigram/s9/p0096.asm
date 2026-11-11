.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 65
cmovz rcx, rsi
and dil, -87 # instrumentation
cmovo di, si
and cl, cl
test al, 91
or esi, -110
or edx, -1
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
cmovnl ebx, edi
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 83
btc rcx, rax
bts rdi, 130
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and cl, -6
or dx, 125
cmovo rdi, rsi
test bx, 4954
cmovnz ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

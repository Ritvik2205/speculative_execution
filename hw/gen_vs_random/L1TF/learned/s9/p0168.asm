.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
cmp bl, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
sbb al, -4
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
xor eax, -69
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rbx
bt edi, ebx
cmovnz rdx, rsi
inc edx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and ax, 26813
test ax, 636
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

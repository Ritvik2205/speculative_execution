.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, esi
xor dl, -125
cmovnz ax, cx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnbe edx, esi
cmovnb di, ax
xor al, -28
btr rsi, 73
and cx, dx
cmovb si, ax
jmp .bb_0.1
.bb_0.1:
test rax, 1732677821
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
xor al, -15
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
bt rcx, 137
or rax, -2043376621
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
btc esi, 226
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

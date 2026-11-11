.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 73
xor dl, -125
cmovnb di, ax
cmovnz ax, cx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
bts eax, esi
cmovb si, ax
xor al, -119
and cx, dx
cmovnbe edx, esi
jmp .bb_0.1
.bb_0.1:
or rax, 1749358813
bt rcx, 137
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
xor al, 77
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
btc esi, 226
test rax, 1732677821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

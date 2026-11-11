.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, esi
xor al, 78
xor dl, -125
cmovnb di, ax
cmovnz ax, cx
btr rsi, 73
cmovb si, ax
and cx, dx
cmovnbe edx, esi
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
jmp .bb_0.1
.bb_0.1:
btc esi, 226
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or rax, -285849275
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
bt rcx, 137
xor al, -119
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

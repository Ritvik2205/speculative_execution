.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 73
and cx, dx
bts eax, esi
cmovb si, ax
cmovnb di, ax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
cmovnbe edx, esi
xor al, 77
xor dl, -68
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
xor al, 78
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
test rax, 1732677821
btc esi, 226
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
bt rcx, 137
or rax, -285849275
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

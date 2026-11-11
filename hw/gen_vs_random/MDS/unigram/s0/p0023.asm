.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or bl, sil
cmovz cx, cx
xor si, 91
cmovnz bx, di
cmovnbe rbx, rbx
and bx, 97
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 44
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
jmp .bb_0.1
.bb_0.1:
bts ebx, 205
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
bts cx, 191
cmovnb esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
cmovnbe rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

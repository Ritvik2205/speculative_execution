.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
cmovnb si, cx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
xor di, 93
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
cmovbe dx, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 71
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 72
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
xor bl, -61
cmovp di, si
cmovz rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
cmovnz eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

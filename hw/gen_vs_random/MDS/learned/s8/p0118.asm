.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
xor al, 122
xor dil, 8
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or rax, -689609688
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
not al
not sil
xor cl, dil
xor cl, bl
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

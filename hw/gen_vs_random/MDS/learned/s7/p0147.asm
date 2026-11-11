.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
xor eax, 1640090871
or al, cl
jmp .bb_0.1
.bb_0.1:
test dl, -95
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
bt dx, bx
and al, al
test sil, -55
test cl, cl
and al, 87
and bl, 68
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or al, 25
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

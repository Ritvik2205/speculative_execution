.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
sbb al, sil
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 61
or al, -2
cmovbe edx, esi
lea rsi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

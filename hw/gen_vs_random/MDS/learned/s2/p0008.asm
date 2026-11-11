.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and sil, al
jmp .bb_0.1
.bb_0.1:
or al, -17
test eax, -1634766116
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

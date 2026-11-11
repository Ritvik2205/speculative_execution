.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
add cl, -127
adc ax, -27488
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

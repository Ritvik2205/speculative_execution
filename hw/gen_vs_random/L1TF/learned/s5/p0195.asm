.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
sbb si, 18
test cl, bl
add dx, 72
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
xor bl, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 52
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

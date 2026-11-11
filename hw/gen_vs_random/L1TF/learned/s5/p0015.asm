.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 82
xor al, 38
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or bl, dl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
add ax, 1313
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

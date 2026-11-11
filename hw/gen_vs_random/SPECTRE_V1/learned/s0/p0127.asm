.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
add dil, bl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
add si, 93
and sil, bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 60
and cx, 91
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
test al, -126
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

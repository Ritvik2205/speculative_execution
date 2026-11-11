.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea dx, qword ptr [rax + rdi]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and di, 89
test al, -32
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 76
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
dec sil
test dx, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test bl, -8
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor dl, bl
add sil, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 99
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
test al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

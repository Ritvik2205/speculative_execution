.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
sub sil, bl
sub dl, 71
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sub al, dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

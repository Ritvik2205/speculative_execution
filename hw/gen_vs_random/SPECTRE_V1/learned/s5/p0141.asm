.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
sub cl, al
add dl, al
sub sil, dil
xchg rax, rbx
sub rsi, 97
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
test bl, -8
sub al, dl
add si, 89
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

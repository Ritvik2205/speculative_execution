.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
or ebx, 48
sub al, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
xor al, 16
and al, dl
adc dl, al
and eax, -409673666
test rax, rsi
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add bl, dl
cmp cl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

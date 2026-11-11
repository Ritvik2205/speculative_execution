.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 51
cmp cl, bl
and dil, dl
sbb bl, 79
sub al, 63
mov al, cl
dec dl
cmovno cx, si
or cl, dil
sbb dl, dil
neg dil
sub rbx, rsi
test dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

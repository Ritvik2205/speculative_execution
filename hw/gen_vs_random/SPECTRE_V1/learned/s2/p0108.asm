.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
sub cl, dl
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
sub cl, bl
xor al, -119
mov bl, dil
xor rax, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
sub al, bl
adc bl, cl
xor bx, 100
adc al, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
dec sil
jmp .bb_0.2
.bb_0.2:
and al, al
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
add dl, sil
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

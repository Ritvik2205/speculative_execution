.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
setb bl
test bl, -8
sub al, dl
and cl, -57
sub ax, -17837
sub bl, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

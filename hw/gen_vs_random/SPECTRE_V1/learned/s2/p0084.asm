.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
add dl, 47
sbb dl, bl
add sil, bl
mov dl, al
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
test dl, -7
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
lea edx, qword ptr [rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -105
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
sub al, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

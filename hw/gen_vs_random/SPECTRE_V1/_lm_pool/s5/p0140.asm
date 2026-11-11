.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
setnb al
add al, -44
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 70
adc eax, -655457029
add sil, 2
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, -107
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub dl, cl
test dil, -116
sbb dl, 127
sbb bl, dl
dec dil
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

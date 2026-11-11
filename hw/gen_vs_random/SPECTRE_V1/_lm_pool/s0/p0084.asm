.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
sbb edx, -8
neg rbx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add bl, dl
sub dl, dil
sub dl, -48
sbb dl, dil
cmp rbx, 57
cmovle rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

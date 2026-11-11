.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dil
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
setno dil
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb cl, al
lea rdi, qword ptr [rbx]
xor bl, -38
sub dl, -12
bt eax, 78
jle .bb_0.3
jmp .exit_0
.bb_0.3:
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
sub al, cl
adc dl, -12
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
sub bl, sil
jmp .bb_0.1
.bb_0.1:
cwde
add bl, dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

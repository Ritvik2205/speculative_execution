.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 42
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
lea edi, qword ptr [rax + rax + 26]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
or sil, -44
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 25
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 79
and sil, -90
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

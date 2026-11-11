.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
lea rdi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and edi, 99
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
sub dl, bl
and ecx, 64
jmp .bb_0.2
.bb_0.2:
add sil, al
test eax, 899472326
sub rax, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

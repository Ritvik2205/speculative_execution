.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor rax, 376589024
cmp al, 13
sub cl, sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 3
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
mov al, sil
mov cl, al
test rbx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

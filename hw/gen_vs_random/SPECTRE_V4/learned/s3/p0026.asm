.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 52
or al, -16
add dl, al
sub dl, -16
sub sil, -35
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb cl, dl
dec bl
sub al, sil
or rdi, 43
sbb dl, bl
xor bl, 126
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

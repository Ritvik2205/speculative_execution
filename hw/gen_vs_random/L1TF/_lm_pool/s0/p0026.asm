.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, sil
sub sil, dl
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
mov dl, dil
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sbb cl, bl
lea ecx, qword ptr [rcx + rdx + 45]
mov al, -101
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

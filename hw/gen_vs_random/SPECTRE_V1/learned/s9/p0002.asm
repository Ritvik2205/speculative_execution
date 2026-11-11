.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -43
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
cmovno ax, di
xor al, cl
sub al, bl
sbb eax, 100
and cl, 86
mov dil, dl
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and al, dil
or sil, bl
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

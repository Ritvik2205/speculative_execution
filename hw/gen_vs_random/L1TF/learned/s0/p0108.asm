.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and eax, -409673666
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
adc dl, -12
neg dl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and al, al
lea rdx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

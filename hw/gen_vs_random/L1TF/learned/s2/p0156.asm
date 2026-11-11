.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, eax
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and al, sil
sbb cl, -11
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rbx + rax + 49]
and cl, dil
add al, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
or ax, -18131
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

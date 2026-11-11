.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and dil, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and al, bl
xor rcx, 71
or rdi, -11
jmp .bb_0.1
.bb_0.1:
test sil, bl
and sil, al
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and al, 49
and ax, -122
test eax, 424329527
test sil, dil
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
mov al, sil
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
test dil, -126
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
test al, -56
and al, sil
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

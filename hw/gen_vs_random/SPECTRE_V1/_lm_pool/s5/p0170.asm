.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
xor dil, sil
or eax, -1641258390
jns .bb_0.4
jmp .exit_0
.bb_0.4:
xor dl, sil
sub bl, al
or rbx, 2
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

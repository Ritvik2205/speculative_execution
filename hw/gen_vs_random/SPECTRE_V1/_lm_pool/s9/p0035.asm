.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
lea dx, qword ptr [rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, -19
lea rax, qword ptr [rdx + rsi + 82]
add dl, 47
mov bl, cl
lea ecx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

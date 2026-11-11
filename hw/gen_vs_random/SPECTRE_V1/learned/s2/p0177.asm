.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
lea dx, qword ptr [rsi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor dil, -37
test al, 84
add dil, sil
sbb al, 66
xor al, 78
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb al, dl
sub rax, -1628299544
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
sub bl, al
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

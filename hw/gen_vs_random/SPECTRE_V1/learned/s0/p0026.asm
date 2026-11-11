.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
test dil, bl
or ax, -114
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
sub rcx, 13
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
cmovno rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
sbb sil, cl
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

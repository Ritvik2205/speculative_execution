.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
xor bx, 2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and dl, dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
sbb al, -50
xor al, dl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
sub dil, -39
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

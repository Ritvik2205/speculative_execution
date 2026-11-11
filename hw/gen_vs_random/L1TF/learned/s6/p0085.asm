.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor dil, -42
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
sbb dl, al
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, dil
jmp .bb_0.3
.bb_0.3:
test al, 15
sbb rdx, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

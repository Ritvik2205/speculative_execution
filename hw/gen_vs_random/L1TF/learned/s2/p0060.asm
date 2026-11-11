.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 31
sub dl, dil
xor dl, sil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

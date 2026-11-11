.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 59
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sub ecx, 44
sbb bl, -88
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

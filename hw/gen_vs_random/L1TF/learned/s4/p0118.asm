.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
or ax, -10161
test rcx, rdx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 43
inc dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
test ax, 22956
and dl, 59
movzx edx, bx
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 185586366
or al, -50
cmp al, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
cmp eax, 2
or eax, -863161215
jmp .bb_0.1
.bb_0.1:
sub dil, -28
or al, 1
xor al, -40
or dil, 89
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

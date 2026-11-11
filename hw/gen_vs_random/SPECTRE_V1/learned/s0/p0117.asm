.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rcx
xor dil, -37
xor dl, 71
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
or eax, -126
lea rbx, qword ptr [rdi + rdx + 65]
jmp .bb_0.1
.bb_0.1:
mov al, bl
not edx
jmp .bb_0.2
.bb_0.2:
sbb bl, sil
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

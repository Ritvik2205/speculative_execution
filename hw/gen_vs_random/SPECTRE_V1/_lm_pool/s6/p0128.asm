.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
mov dil, sil
cmp rcx, 47
cmp cl, al
lea rbx, qword ptr [rsi + rcx + 66]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 42
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
sbb ecx, 72
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

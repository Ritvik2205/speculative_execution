.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
test dil, -116
inc sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 71
sbb eax, 1332762061
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
add al, al
cmp al, 53
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
add eax, 1518653812
test al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

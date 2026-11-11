.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
mov cl, dil
cmp dil, dl
inc dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
bt ecx, ebx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 56 # instrumentation
cmovns edi, ecx
or bl, cl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sub rax, -679751639
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
lea rsi, qword ptr [rdi]
lea ebx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
cmovp eax, ebx
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

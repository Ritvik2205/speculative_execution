.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ecx, eax
lea rdx, qword ptr [rax + rsi]
mov cl, al
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
xchg eax, ebx
cmp dil, -58
sub dil, -32
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

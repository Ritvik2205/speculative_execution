.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
setns sil
lea si, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub rdx, 84
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

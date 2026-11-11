.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, 79
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ebx
add rdx, 95
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
setb dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
setnb bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
add bl, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
cmovno dx, dx
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
lea esi, qword ptr [rcx]
add al, -94 # instrumentation
cmovnle rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

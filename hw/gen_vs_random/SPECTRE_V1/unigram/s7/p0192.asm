.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovnle rcx, rdi
cmovle ecx, eax
sbb ecx, 6
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
sbb ecx, 79
sbb sil, bl
movsx ebx, al
cmovbe si, ax
cmovs rdx, rbx
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
and cl, dil
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

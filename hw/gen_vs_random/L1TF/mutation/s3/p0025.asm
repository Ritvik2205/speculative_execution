.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
movsx si, dl
and dl, al
sub rcx, rax
jmp .bb_0.1
.bb_0.1:
cmovz esi, edx
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -36
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
bt rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

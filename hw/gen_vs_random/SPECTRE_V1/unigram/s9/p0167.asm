.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
cmovb ax, dx
neg eax
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
sbb bl, 79
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not rax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
adc ebx, 33
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
cmovnle edx, edi
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

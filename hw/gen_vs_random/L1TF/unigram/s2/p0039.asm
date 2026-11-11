.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 12
or ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and dx, dx
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

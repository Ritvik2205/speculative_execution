.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
lea ebx, qword ptr [rsi]
sbb rdi, 72
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
add sil, 56 # instrumentation
cmovns ecx, esi
or al, 48
adc cl, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
btc edx, 21
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
lea bx, qword ptr [rax + rcx + 93]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

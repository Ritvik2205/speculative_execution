.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
inc eax
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 15
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 32
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and si, 99
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
mov cl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

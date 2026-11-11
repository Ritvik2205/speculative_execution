.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
setnz cl
adc al, 8
sbb rcx, 46
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 72
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
lea dx, qword ptr [rcx + rcx]
adc cl, -18
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

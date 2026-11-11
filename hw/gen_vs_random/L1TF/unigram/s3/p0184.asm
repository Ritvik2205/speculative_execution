.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dil
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
inc rax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 97
movzx edx, dil
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rdi + 89]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
or bl, -88
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

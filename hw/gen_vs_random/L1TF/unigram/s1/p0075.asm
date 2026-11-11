.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx + rbx + 1]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 76
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 72
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rdx]
neg eax
bt si, si
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and cl, al
add bl, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
lea bx, qword ptr [rcx]
add al, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

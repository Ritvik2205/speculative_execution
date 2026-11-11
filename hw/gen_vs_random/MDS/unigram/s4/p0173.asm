.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -67
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
xor dil, 51
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 75
test dil, -67
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 53
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
xor dil, 23
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
or dl, -115
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and bl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and cl, dl
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 199
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
cmovnb bx, bx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
setnl bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
cmovnl esi, ebx
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
test eax, 758789512
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 23
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 28
cmovs eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

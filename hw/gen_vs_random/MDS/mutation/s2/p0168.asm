.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
cmovz ecx, edx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
cmovnb rdi, rdx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
test ax, bx
xor rcx, 71
bts rsi, rdi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
not si
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
xor cx, -18
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
cmovo rdx, rsi
cmovnbe bx, dx
xor bl, al
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test cl, 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

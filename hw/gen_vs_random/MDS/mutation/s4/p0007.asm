.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, rdi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
cmovnb rdi, rdx
cmovz ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
xor rcx, -2
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
test ax, bx
jmp .bb_0.1
.bb_0.1:
xor bl, al
cmovo rdx, rsi
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
not si
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
cmovnbe bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
test cl, -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

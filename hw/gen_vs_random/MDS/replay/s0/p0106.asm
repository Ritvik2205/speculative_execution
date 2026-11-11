.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
bts rsi, rdi
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
xor rcx, -2
cmovnb rdi, rdx
cmovz ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor cx, -18
cmovnbe bx, dx
xor bl, al
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
test cl, 91
cmovo rdx, rsi
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
not si
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

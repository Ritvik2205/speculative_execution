.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rsi, rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
test ax, bx
xor rcx, -2
cmovnb rdi, rdx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
cmovz ecx, edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
not si
cmovnbe bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
xor bl, al
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
test cl, 54
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor cx, -18
cmovo rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

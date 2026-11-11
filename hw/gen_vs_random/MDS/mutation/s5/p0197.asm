.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rdi, rdx
bts rsi, rdi
xor rcx, -2
test ax, bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
cmovz ecx, edx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
cmovo rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
not si
cmovnbe bx, dx
xor bl, al
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor cx, -18
test cl, 54
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

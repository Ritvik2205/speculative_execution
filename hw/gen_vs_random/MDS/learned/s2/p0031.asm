.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
bt si, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and cl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor bl, 2
xor bx, di
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdi
test bl, dl
and bl, sil
cmovp ax, bx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
xor ax, 2053
xor al, -28
cmp ax, 50
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 46
cmp rax, 23
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 63
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
adc bl, al
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
cmovle rdx, rsi
imul cl
or al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

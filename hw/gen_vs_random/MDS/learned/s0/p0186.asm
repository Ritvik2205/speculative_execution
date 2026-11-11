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
cmp dl, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
and cl, -3 # instrumentation
cmovnb cx, ax
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
or rax, -2043376621
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 79
jmp .bb_0.1
.bb_0.1:
bts rax, 117
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
cmovz di, ax
bts rbx, 3
or bl, al
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and cl, -63
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 36
sbb cl, 30
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 79
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 80
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
mov rdx, rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test eax, 758789512
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 41
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
cmp ax, 89
test ax, cx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and dil, bl
cmovb rcx, rsi
cmovb rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

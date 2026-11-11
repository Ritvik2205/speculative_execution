.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -43
sbb rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 81
and dil, 96
cmp cl, sil
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
add cl, 122 # instrumentation
cmovz rbx, rcx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
or al, 96
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
imul cl
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
not ebx
add cl, -42 # instrumentation
adc bl, dl
cmovnz ebx, esi
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovnl rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 4
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
test bx, -1599
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
btc rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
mov bl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
cmp rcx, 88
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 33
not cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
adc al, cl
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
xor ebx, edi
or al, al
test bl, al
sub eax, esi
cmp al, 114
xor al, sil
xor bl, 93
sbb dl, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

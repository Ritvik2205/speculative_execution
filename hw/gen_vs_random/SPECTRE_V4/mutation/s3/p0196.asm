.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
adc eax, 948001339
and cl, cl
add rsi, 68
adc eax, -983562873
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovz rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
sbb rbx, 20
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], esi
bts cx, di
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
adc sil, cl
cmovle rbx, rax
xor dl, -66
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
xor ax, -17712
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
adc cl, -66
sub al, 96
or eax, -646827727
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btr rsi, 20
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovle rbx, rdx
adc al, 43
test cl, -31
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
test bl, cl
add cl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
cmp rbx, -66
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

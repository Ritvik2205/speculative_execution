.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
sbb eax, -676736552
btc rdi, rbx
mov dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
cmovl si, dx
cmovnb ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
movsx si, cl
sub rsi, -48
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
imul dl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
neg cx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnz rdi, rsi
adc rcx, -99
test ecx, -1293796332
cmp dl, cl
mov cl, al
or rax, 185991441
mov dil, al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sbb al, 95
mov sil, dil
add bl, al
imul sil
and ebx, -122
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovnbe rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovz edx, edi
add rcx, rbx
adc rdx, -90
or al, al
btr si, 108
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
test cx, 19367
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
movsx ebx, ax
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

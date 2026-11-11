.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, cl
add dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 36
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
sub dl, 107
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
mov al, dl
test ebx, 78
test bx, 24072
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
bt rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
add ebx, -57
and cl, 126
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rbx
xchg ecx, edi
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
movsx rsi, dl
xor cl, -73
add rdi, 111
cmp bl, al
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
adc edx, -86
btc ax, 89
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ecx
xor ecx, 16
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
cmp bl, dl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
bt ecx, esi
adc rax, 1682231791
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
and sil, dil
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
dec rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
or rdx, 1
sub di, 9
cmovnb di, dx
cmovz di, bx
neg sil
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

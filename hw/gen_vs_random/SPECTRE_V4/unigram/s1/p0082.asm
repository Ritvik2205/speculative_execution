.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
imul dil
or dl, 71
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
cmp al, -116
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
movsx rdi, cx
sbb dil, dil
bt ebx, esi
bswap esi
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
xor ax, bx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 19
or ax, si
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
cmp sil, dil
btr rax, rdx
xor bl, dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
cmp edx, 4
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 55
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
adc dil, dl
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
sbb edi, -94
cmovbe esi, edi
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
test dl, 114
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add edi, edx
imul dl
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
inc dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

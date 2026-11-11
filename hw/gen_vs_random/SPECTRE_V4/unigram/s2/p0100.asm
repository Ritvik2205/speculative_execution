.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 96
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, ecx
sub bl, bl
imul esi, edx, 69
test ebx, -595096626
sbb dil, 88
not bx
add rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
mul esi
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
inc edi
add bl, -18 # instrumentation
mov rcx, rbx
and edx, 49
or rdi, rbx
btr rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
cmovle edx, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
add al, -10 # instrumentation
cmovnbe eax, edi
xchg rcx, rbx
test dx, 78
xor al, sil
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 84
mov bl, bl
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
add cl, -37 # instrumentation
adc edx, 38
sbb dx, 29
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 37
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovnbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
cmovnb ebx, eax
btc ax, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

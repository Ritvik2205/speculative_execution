.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, edx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
or cl, 66
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
cmovle rbx, rdi
and al, al
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovle rax, rcx
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
add cl, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
test al, 114
cmp ax, 28568
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 63
imul rdx, rbx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
test rbx, rdx
cmovnle cx, si
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sub eax, ecx
imul si, bx, 63
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
neg edx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 5
cmovnle rdx, rsi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rcx]
sub sil, dl
cmovbe si, di
add al, -96 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
dec cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and dil, dil
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
test edx, edi
or edx, -128
xor bl, dl
xor ebx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
bswap edx
mul dil
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

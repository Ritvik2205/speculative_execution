.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rsi, rax
and al, cl
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
imul sil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnz eax, edi
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
cmovb ecx, ebx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 77
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or bx, si
and rdx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdx]
cmp rdi, 22
cmovb eax, ecx
test bl, cl
bts ebx, esi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
movzx rbx, cl
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
test al, dl
and rdx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdx]
adc al, 69
imul dx, bx
sub bl, 17
xor dl, 99
xor cl, -101
add al, 56 # instrumentation
cmovle rcx, rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
imul eax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
xor rcx, 50
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 13
sbb bl, bl
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
cmp ebx, 69
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
mul cl
cmovnb edi, edx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

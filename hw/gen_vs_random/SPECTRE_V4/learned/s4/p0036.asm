.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
cmp edi, edx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 19
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
sbb dl, dil
cmovb edi, edx
bts rdi, 26
and dl, 84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
imul si, ax, 43
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ecx, 68
sub dl, dil
xor rbx, rdx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmp dil, cl
cmovp rcx, rdi
adc al, dl
test eax, 1561062795
xchg bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
add al, 118
movsx rdi, dx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
xor esi, ebx
test cl, bl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
test ebx, -595096626
cmovs rbx, rdx
or al, sil
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

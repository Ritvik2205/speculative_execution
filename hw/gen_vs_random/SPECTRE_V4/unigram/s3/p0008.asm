.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and sil, -49
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
bts ebx, ebx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 71
test sil, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 68
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp dil, dil
sub dil, -10
btc rcx, rdx
bswap ecx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
test ebx, -595096626
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
cmovs ebx, edx
imul dx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
sub dl, 43
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 51
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
movzx esi, dl
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
xor dil, 76
xor sil, 56
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
xor dil, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
test al, 80
bswap rdx
and al, dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

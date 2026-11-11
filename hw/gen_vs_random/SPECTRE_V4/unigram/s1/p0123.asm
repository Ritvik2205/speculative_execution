.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
cmp cl, al
neg rsi
cmp dl, bl
sub sil, dl
not bx
btc esi, 63
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
add bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
imul dx, ax
or al, dl
add cl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and dl, -53
sub al, sil
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
movzx bx, cl
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
cmovnb si, ax
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and ax, cx
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
cmp dx, 13
test ecx, -907816607
sbb eax, 727775941
test esi, ecx
xor di, 33
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 91
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 65
bswap edx
xchg sil, sil
movsx ebx, bx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
imul al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
add dl, al
cmp cl, 49
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
bt rbx, 4
sub ecx, -107
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edi
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

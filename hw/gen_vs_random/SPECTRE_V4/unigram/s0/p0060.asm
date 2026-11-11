.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -52
test edx, 1479885278
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
adc sil, sil
and dx, -107
bt edi, 78
xchg esi, ecx
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 5
xor bl, 126
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add dil, 58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 70
xor cl, dil
mov ecx, -405458789
movzx edx, sil
test eax, -651442446
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
sbb rsi, 117
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
or rax, -823069511
add dl, -8
test edx, -38580719
and si, dx
btr dx, 245
sub ecx, eax
add al, -55
adc al, cl
cmp rsi, 74
add sil, al
mov ecx, edi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 39
imul esi
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
test di, di
xchg rsi, rsi
bswap rdi
cmovp ax, si
movsx di, sil
cmovl cx, bx
and di, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

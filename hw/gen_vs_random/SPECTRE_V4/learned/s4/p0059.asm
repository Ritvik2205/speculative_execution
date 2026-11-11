.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 69
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
cmovp edx, ebx
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and edx, 71
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
cmovns edx, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
btc ax, si
and rax, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
sub ecx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test eax, 1880179600
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and sil, al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
movsx rsi, bx
or dl, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
imul bl
add cl, -117 # instrumentation
cmovs rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

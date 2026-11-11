.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rcx, rsi
test rdx, 7
inc di
inc edx
sbb dl, -99
sbb cl, dl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmovz ebx, edx
cmp ebx, 74
add bl, -18 # instrumentation
mov rbx, rax
imul rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 79
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
cmp cl, 61
add dl, 48 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
add dil, dil
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
test si, 26
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
mul rbx
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
cmovnbe esi, edi
cmp esi, 76
not ecx
cmp sil, sil
cmovle rbx, rdx
sub esi, 9
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
cmovno edi, ebx
movzx cx, bl
add cl, 97
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 15
cmovno esi, eax
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
cmovnp rcx, rdi
movzx di, dil
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
adc bl, 89
cmp sil, 88
or bl, sil
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
not dx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 1
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

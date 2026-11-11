.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 60
or bl, bl
neg esi
xor edi, 127
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
mov rbx, rdi
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and di, -34
cmp rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
xchg ax, dx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
sub dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
xchg eax, edx
test al, sil
mov rax, rbx
mul ecx
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 65
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
imul ecx, ebx
add al, sil
mul dil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
neg esi
xor rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
cmovnle rsi, rbx
test dl, dil
cmp esi, ebx
add bl, -74 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

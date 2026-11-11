.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rsi, di
and cl, sil
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
neg dl
or eax, 2007177863
cmovb edi, esi
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and dl, 30
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and al, -127
or bl, bl
adc eax, -79
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
imul dx, di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
xor rdi, 96
test al, 66
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
cmovz ax, ax
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
adc al, 69
imul ax, bx
cmovnbe ebx, edi
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
xor bl, sil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 17
cmovnz ecx, esi
sub ebx, edx
xor bl, 93
test dl, 19
cmp bl, 13
sbb dil, 3
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 96
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
btr bx, ax
movzx bx, bl
or di, 0b1000000000000000 # instrumentation
bsr si, di
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmp bl, 13
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

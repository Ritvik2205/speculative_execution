.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, al
adc dil, al
adc al, sil
add si, 4
xor bx, cx
test sil, sil
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
cmp dl, sil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
or eax, 1802312508
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
cmovl rcx, rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdi]
or bl, 37
and rdi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdi]
not si
and al, dil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
not ax
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xchg dil, dil
adc dil, dil
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
test eax, 1880179600
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and al, -127
add dl, 31 # instrumentation
cmovnl bx, bx
or cl, bl
cmovo rsi, rax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 38
xor esi, 7
add rdx, 97
add sil, sil
xor al, 69
sbb dl, dl
cmp dl, 35
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
cmovb esi, edi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
xor sil, 56
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
imul di, bx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

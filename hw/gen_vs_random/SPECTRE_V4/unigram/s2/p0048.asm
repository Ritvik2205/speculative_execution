.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 34
neg dil
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
cmp rax, -1102558854
add dx, -90
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
sbb dl, bl
cmovp di, cx
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
sub edx, edi
and dil, 96
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovnz eax, edx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt si, 97
dec rdi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
mul rbx
add rcx, rdx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
neg dl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
movzx ebx, sil
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 89
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
btc bx, 52
imul rbx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
btc rax, rbx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
test esi, 48
xchg ax, cx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 93
bts rcx, rax
add cl, cl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
movsx rdx, bl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

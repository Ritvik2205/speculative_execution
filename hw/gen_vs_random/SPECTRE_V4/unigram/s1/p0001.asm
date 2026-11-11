.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, dx
test rdx, -1074289902
or dil, 89
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
cmp bl, -16
adc ecx, 114
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
xor ax, 20236
cmovp rbx, rbx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 55
sbb dl, 75
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp cx, 0
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 34
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 70
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
add edx, 89
add sil, -35 # instrumentation
mov al, sil
bt cx, 31
imul edx, edx
and dx, -107
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
add sil, 71 # instrumentation
cmovnle rax, rsi
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rcx]
sub cl, -127
adc sil, -112
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 85
add al, -60 # instrumentation
cmovle rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

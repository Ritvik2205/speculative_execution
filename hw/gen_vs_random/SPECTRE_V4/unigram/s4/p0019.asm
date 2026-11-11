.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
test dil, dil
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 80
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and dl, 78
movzx eax, dl
adc dil, 61
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
test eax, -818909344
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
sbb al, 32
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
add bl, al
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 54
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
sbb dl, -99
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
xor cl, -54
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 49
movzx di, cl
cmovs ebx, ecx
sub sil, -50
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
test al, 66
sub al, 50
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add cl, cl
add rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
sbb bl, -94
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and bl, -63
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
test dl, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

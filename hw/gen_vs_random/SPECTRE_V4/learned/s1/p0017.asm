.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, dx
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
lea ax, qword ptr [rbx + rdx]
or bl, dl
add dil, 82
add cl, sil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
neg sil
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 47
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 29
xor al, 56
imul rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add esi, -5
xchg rcx, rbx
lea bx, qword ptr [rdi + rdx + 66]
lea rbx, qword ptr [rdi + rdi + 9]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
xor al, 69
and rcx, -102
mul edx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
adc bx, -89
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
sbb al, -62
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
add ebx, edi
xor al, 56
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and si, 68
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or sil, 16
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
xor dil, sil
movsx si, cl
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

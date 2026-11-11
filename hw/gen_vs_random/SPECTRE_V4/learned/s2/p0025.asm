.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 2115020203
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
movzx cx, dl
cmovnbe edx, ebx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 66
cmovle di, di
sub dl, bl
and rdi, -2
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 43
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], bx
cmp al, 81
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 91
xchg edx, ebx
btc rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
adc al, al
cmp ax, -906
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
lea bx, qword ptr [rsi + rbx]
cmovs rax, rdi
cmovnbe edi, esi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
xchg bl, sil
cmovb edx, eax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
xor esi, eax
xor al, 56
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 7
and rdi, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

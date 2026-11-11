.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, 32
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test rsi, rax
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and bl, -63
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 98
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
or dl, dl
adc bl, al
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add rdx, 29
sub cl, -74
add cx, cx
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
movzx ecx, dl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, edi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rsi, 83
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
xchg bl, al
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
sub al, 50
cmp al, 81
add al, 5
movzx rax, di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

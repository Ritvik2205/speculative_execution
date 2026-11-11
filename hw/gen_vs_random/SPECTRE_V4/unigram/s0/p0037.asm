.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 24441
sub esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and dl, cl
movzx di, sil
mov rax, -8696242625349627833
cmovnp ax, ax
or sil, dil
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 94
cmovnbe rax, rdi
adc dil, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 63
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and si, 68
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, esi
imul rdi
or ax, cx
imul cl
sbb ecx, 51
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
sbb al, dil
cmovnb ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
bt esi, ecx
cmovnle rsi, rsi
sbb dil, 43
movzx bx, dl
and cl, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 72
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
sbb dl, al
cmovle rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
test dil, 93
and rsi, 1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

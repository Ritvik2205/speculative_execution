.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
movsx si, al
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
mov ebx, 51969593
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
bts dx, si
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
xor ax, -6064
sub rax, rdi
imul rax, rdi
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
and bl, bl
adc esi, 80
cmp rax, rax
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
bt rdx, rbx
cmp bl, bl
add cl, -106 # instrumentation
cmovno rdx, rcx
test al, -26
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
bt di, 15
movzx rdx, ax
cmp rcx, -121
bt si, 114
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 50
xor edi, ecx
xor esi, -82
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 92
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
xchg di, ax
cmp cx, 0
mov rdx, rax
dec rax
add ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
inc di
xchg dl, sil
or rdi, 43
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 33
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 70
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

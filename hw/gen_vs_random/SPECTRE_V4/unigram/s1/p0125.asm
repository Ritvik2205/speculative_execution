.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
xor al, 29
add cl, -117 # instrumentation
cmovs rcx, rax
and eax, -24
sbb dl, sil
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
sub bl, cl
btr rcx, rax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
xchg si, di
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 64
btr cx, dx
sub dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmovnbe eax, ecx
cmp rdi, 15
cmp al, cl
add dx, -90
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add dl, 41
cmp dil, -124
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
adc eax, -79
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
or eax, edx
cmovnl ax, di
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 20
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
add rdi, rsi
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
sub ecx, 33
add dl, -99 # instrumentation
not edx
sub dil, -10
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and bl, dil
xor si, ax
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
add al, al
cmovl rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

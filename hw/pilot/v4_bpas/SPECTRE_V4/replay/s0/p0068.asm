.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
imul rdx, rdx, 44
or rax, rsi
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
sbb bx, ax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
bt dx, 193
add sil, 3
mov cl, bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
test al, -85
cmp dl, dl
bt ecx, 25
and rsi, 0
cmp al, -106
mov dl, al
cmovp ebx, eax
and dl, 24
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
movzx ebx, dil
not dl
bts dx, 26
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovl rcx, rsi
cmovnbe rbx, rdi
test al, -38
cmovl si, di
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovl rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

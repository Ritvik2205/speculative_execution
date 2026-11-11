.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 193
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and dl, -104
cmovl rcx, rsi
movzx ebx, dil
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
test al, 72
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmovl si, di
cmp dl, dl
cmp al, 98
bts dx, 26
cmovl rsi, rax
sbb bx, ax
or rax, rsi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rsi, 0
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
cmovp ebx, eax
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov dl, al
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
bt ecx, 25
not dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
add sil, -18
mov cl, bl
cmovnbe rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
test al, -26
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
imul rdx, rdx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

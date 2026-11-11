.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
not dl
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
cmovl si, di
imul rdx, rdx, 44
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
cmovp ebx, eax
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmp al, 114
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
bt dx, 193
bts dx, 96
bt ecx, 25
add sil, -18
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
sbb bx, ax
mov cl, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
cmovnbe rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
or rax, rsi
movzx ebx, dil
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
mov dl, al
and dl, 126
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rsi, 0
test al, -85
test al, 57
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmovl rsi, rax
cmovl rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
cmovp ebx, eax
and dl, -53
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
mov cl, bl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
cmovl si, di
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
test al, -38
or rax, rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovnbe rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
bt ecx, 177
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
mov dl, al
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
movzx ebx, dil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
bts dx, 26
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sbb bx, ax
cmovl rsi, rax
and rsi, 0
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
cmp al, -122
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
imul rdx, rdx, 44
test al, 52
cmovl rcx, rsi
bt dx, 81
add sil, 3
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

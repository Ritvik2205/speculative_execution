.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ebx, eax
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
bt ecx, 25
cmp dl, dl
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
sbb bx, ax
test al, 52
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
bt dx, 81
mov cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
not dl
add sil, -18
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
mov dl, al
test al, 57
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
cmp al, -122
cmovl rcx, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
cmovl si, di
cmovnbe rbx, rdi
bts dx, 96
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
or rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rsi, 0
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
movzx ebx, dil
imul rdx, rdx, 44
cmovl rsi, rax
and dl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

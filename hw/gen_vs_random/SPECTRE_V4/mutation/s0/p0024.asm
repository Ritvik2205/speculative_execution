.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, 98
or rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
mov dl, al
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
mov cl, bl
cmovl rsi, rax
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmovl rcx, rsi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
test al, 52
cmp dl, dl
bts dx, 96
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
test al, 72
cmovl si, di
cmovnbe rbx, rdi
not dl
imul rdx, rdx, 44
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
cmovp ebx, eax
movzx ebx, dil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
add sil, 3
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
sbb bx, ax
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
bt ecx, 247
bt dx, 81
and rsi, 0
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and dl, -11
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

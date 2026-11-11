.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 1913354318
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
bt dx, 193
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
xor dl, -123
mul dl
add ax, 6414
movsx ebx, dil
mov rdi, -7956777892145474940
sub bl, bl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor bx, bx
add dil, cl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
test al, dl
cmp rax, -1247892360
and rbx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rbx]
add sil, dil
adc rbx, 60
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sbb di, di
btr eax, ebx
cmp si, 109
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
cmovno eax, esi
and cl, al
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
mov dl, -124
btr cx, 252
test sil, dl
cmovp rbx, rcx
cmp di, -8
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
neg rsi
adc rcx, 57
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
adc dil, cl
not dil
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
cmovno rsi, rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 27
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

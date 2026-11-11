.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
sub cl, dl
neg dl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
add bl, 95 # instrumentation
mov dil, 16
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmovb eax, ebx
mul rbx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or dx, dx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
cmovno esi, eax
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
sub si, -92
sub al, bl
sbb rax, 1518549445
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
imul ebx
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
bts esi, ebx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
cmp ebx, -27
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and dil, 8
sub bl, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and dl, al
xor rax, -98
add cl, dl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
cmovb ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

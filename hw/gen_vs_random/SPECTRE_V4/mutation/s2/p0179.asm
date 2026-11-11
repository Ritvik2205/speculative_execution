.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, -27
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
add cl, dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
cmovno esi, eax
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
cmovb eax, ebx
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
imul ebx
and dl, al
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
cmovb ax, cx
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
sub al, bl
or dx, dx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
sbb rax, 1518549445
sub bl, al
mul rbx
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
xor rax, 1049851782
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add bl, 95 # instrumentation
mov dil, 16
bts esi, ebx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and dil, -23
neg dl
sub si, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

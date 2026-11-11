.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 95 # instrumentation
mov dil, 16
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and dl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
imul ebx
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
cmovb ax, cx
sub bl, al
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
bts esi, ebx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
sub si, -92
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
cmovb eax, ebx
or dx, dx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor rax, -224991767
cmp ebx, 80
and dil, 8
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
sbb rax, 1518549445
neg dl
mul rbx
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add cl, dl
sub cl, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
cmovno esi, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

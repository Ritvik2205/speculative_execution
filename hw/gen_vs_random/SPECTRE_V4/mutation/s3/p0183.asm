.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
or dx, dx
bts esi, ebx
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
neg dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
xor rax, 93
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
sub bl, al
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmovb eax, ebx
add bl, 95 # instrumentation
mov dil, 16
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
and dl, al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
cmp ebx, 80
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sbb rax, 59
add cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
imul ebx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
cmovb ax, cx
sub al, bl
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
sub si, -92
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
cmovno esi, eax
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and dil, -61
mul rbx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

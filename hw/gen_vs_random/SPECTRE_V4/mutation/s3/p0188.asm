.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, -92
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
sub al, bl
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
cmovb eax, ebx
or dx, dx
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and dil, -120
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
neg dl
cmovno esi, eax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
cmp ebx, -19
mul rbx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
bts esi, ebx
xor rax, -1522567562
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
add bl, 95 # instrumentation
mov dil, 16
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
imul ebx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
sub bl, al
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
sbb rax, 1518549445
and dl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
cmovb ax, cx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

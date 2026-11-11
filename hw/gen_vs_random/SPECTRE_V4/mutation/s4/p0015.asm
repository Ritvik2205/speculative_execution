.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor rax, 944027678
cmovb eax, ebx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and dl, al
sub bl, al
cmovb ax, cx
sub si, -92
or dx, dx
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
mul rbx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
sbb rax, 475459025
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
sub al, bl
neg dl
add cl, dl
cmovno esi, eax
add bl, 95 # instrumentation
mov dil, 16
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and dil, -120
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
imul ebx
bts esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
sub cl, dl
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
cmp ebx, -27
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

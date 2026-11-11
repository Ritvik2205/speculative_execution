.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -74
cmp ebx, 80
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
add bl, 95 # instrumentation
mov dil, 16
imul ebx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
sbb rax, 59
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
cmovb ax, cx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
add cl, dl
neg dl
and dil, -120
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
or dx, dx
mul rbx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
cmovb eax, ebx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
sub si, -92
sub cl, dl
bts esi, ebx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
sub bl, al
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
cmovno esi, eax
and dl, al
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
sub al, bl
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
xor rax, 93
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

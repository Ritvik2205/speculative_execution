.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
xor al, bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
sbb al, -47
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
not rax
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
xor al, 69
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 24
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add dx, dx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
test bl, dl
or sil, bl
sbb dl, sil
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add dl, 31 # instrumentation
cmovnl bx, bx
bts edx, esi
neg al
test al, dl
test ax, cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
cmp bl, sil
sub bl, 17
test eax, 1561062795
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

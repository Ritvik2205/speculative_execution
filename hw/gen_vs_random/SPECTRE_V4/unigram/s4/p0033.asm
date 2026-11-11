.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
sub bl, al
add al, bl
sbb cl, 40
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
btr dx, 245
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
or bx, -33
and rdx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdx]
mov cx, -22668
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
sub bl, bl
btc rax, rbx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
add cl, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
test bl, 110
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
mov dl, 81
movsx edx, cx
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 58
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and di, -34
add al, -10 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 66
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
cmp bx, 113
neg edx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], si
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
movzx cx, bl
xor cl, dl
bswap rdx
test dl, bl
dec ecx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
mov bl, 29
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
movsx eax, bx
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

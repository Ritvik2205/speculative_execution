.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
sbb edx, 6
cmp rdx, -49
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
cmovnle rsi, rax
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
btc ebx, 89
mov bl, 106
xchg edx, eax
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
sub rsi, -48
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
dec di
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 56
adc sil, dil
bswap rdx
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
sub eax, edx
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
add dil, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
or dx, 91
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
add bl, -84 # instrumentation
cmovb bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
adc edx, -125
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
cmovnle cx, bx
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
xor eax, eax
neg rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
xchg cl, dil
add dx, dx
cmp bl, -79
dec sil
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
mov al, dil
mov esi, 1695134926
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
cmovnp rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

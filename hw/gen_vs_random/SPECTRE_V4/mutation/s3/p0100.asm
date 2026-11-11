.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and bl, -63
movzx ax, al
or al, 96
neg rbx
imul dx
add sil, 26
neg ebx
xor al, 29
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
sub dl, al
movzx bx, sil
or ax, -15282
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
test bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
sub cl, -74
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
add rdi, 105
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
xor ax, 25554
test dl, 19
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
xchg eax, ebx
bts si, 30
xor cl, -101
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
xor di, ax
cmovns ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
cmovle rdi, rsi
add al, -75 # instrumentation
adc al, 79
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
xor dl, bl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
or eax, -1434249782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

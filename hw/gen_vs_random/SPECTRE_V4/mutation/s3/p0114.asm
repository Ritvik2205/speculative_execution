.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
sub cl, -74
xor ax, 25554
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
add al, -75 # instrumentation
adc al, 79
cmovns ax, ax
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
or eax, -1434249782
sub dl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
xchg eax, ebx
test dl, 19
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
bt edi, ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and bl, 26
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or ax, -15282
or al, 109
add sil, 110
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
test bl, cl
movzx bx, sil
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor di, ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
movzx ax, al
xor cl, -54
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bts si, 30
xor al, 59
neg rbx
xor dl, bl
neg ebx
add rdi, 105
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

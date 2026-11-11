.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
movzx bx, sil
xor ax, 25554
neg rbx
cmovs eax, ecx
xor al, 56
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
cmovle rdi, rsi
bt edi, ebx
xor cl, -101
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
bts si, 30
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xor dl, bl
test dl, 19
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
neg ebx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
add sil, 26
or ax, -15282
imul dx
cmovns ax, ax
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
xor di, ax
add al, -75 # instrumentation
adc al, 79
and bl, 26
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
movzx ax, al
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
or al, 109
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sub dl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
sub cl, 116
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
add rdi, -94
or eax, 2007177863
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
add rdi, -94
imul dx
or ax, -15282
sub dl, al
add sil, 110
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bts si, 30
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
movzx bx, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test dl, 19
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor ax, 28088
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
cmovns ax, ax
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
xor al, 56
bt edi, ebx
test bl, cl
movzx ax, al
and bl, -63
xor cl, -101
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
cmovs eax, ecx
cmovle rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add al, -75 # instrumentation
adc al, 79
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
sub cl, 116
neg rbx
neg ebx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
or eax, 2007177863
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xor dl, bl
xor di, ax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
or al, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 30
add sil, 110
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
cmovns ax, ax
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
movzx ax, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
bt edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
sub cl, -74
movzx bx, sil
or al, 109
neg rbx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and bl, -63
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg ebx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
xor di, ax
or ax, -15282
test bl, cl
xor al, 69
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
cmovs eax, ecx
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
add rdi, -94
imul dx
xor cl, -101
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
cmovle rdi, rsi
or eax, 2007177863
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
add al, -75 # instrumentation
adc al, 79
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

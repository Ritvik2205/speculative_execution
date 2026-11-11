.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xor ax, 28088
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
or ax, -15282
or al, -71
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
xor dl, bl
and bl, 26
movzx bx, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test dl, 19
cmovns ax, ax
imul dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
bt edi, ebx
xor cl, -101
xor al, 102
test bl, cl
or eax, 2007177863
xor di, ax
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
neg rbx
sub dl, al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
neg ebx
bts si, 30
add rdi, 105
add al, -75 # instrumentation
adc al, 79
add sil, 26
cmovs eax, ecx
sub cl, 116
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

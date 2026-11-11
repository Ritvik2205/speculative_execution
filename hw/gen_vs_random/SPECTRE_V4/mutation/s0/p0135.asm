.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
neg rbx
xor di, ax
or ax, -12775
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
test dl, 19
neg ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
movzx ax, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
test bl, cl
or al, 95
xor cl, -54
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovns ax, ax
xor al, 29
bts si, 30
xor dl, bl
add rdi, 105
xor ax, 28088
cmovle rdi, rsi
sub dl, al
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and bl, 26
or eax, -1434249782
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
imul dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add al, -75 # instrumentation
adc al, 79
add sil, 110
movzx bx, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

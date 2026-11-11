.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
xor dl, bl
xor cl, -101
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and bl, 26
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
sub dl, al
neg ebx
add rdi, 105
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
add al, -75 # instrumentation
adc al, 79
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
movzx ax, al
xor al, 69
cmovns ax, ax
xor ax, 25554
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
imul dx
or ax, -12775
xor di, ax
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmovs eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
sub cl, -74
add sil, 110
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
bt edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
neg rbx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmovle rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, -71
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
test dl, 19
movzx bx, sil
or eax, -1434249782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

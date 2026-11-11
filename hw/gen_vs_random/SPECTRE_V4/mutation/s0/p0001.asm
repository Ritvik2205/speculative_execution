.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
xor cl, -101
movzx bx, sil
xor di, ax
or ax, -12775
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
sub cl, -74
bts si, 30
xchg eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and bl, -63
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
test dl, 19
or al, 96
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
or eax, 1802312508
cmovs eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
xor ax, 25554
imul dx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor al, 29
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
xor dl, bl
cmovle rdi, rsi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
add sil, 26
neg rbx
cmovns ax, ax
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
sub dl, al
add rdi, 105
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
add al, -75 # instrumentation
adc al, 79
movzx ax, al
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
neg ebx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

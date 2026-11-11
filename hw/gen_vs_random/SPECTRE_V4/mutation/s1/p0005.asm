.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs eax, ecx
xor cl, -101
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
movzx ax, al
and bl, -63
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
xchg eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
cmovle rdi, rsi
neg ebx
add sil, 110
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sub dl, al
imul dx
test bl, cl
add rdi, -94
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
xor ax, 25554
cmovns ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xor di, ax
add al, -75 # instrumentation
adc al, 79
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
movzx bx, sil
neg rbx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
bt edi, ebx
test dl, 19
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or ax, -15282
xor al, 69
bts si, 30
or al, -71
sub cl, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

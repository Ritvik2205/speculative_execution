.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmovs eax, ecx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
add rdi, -94
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
bts si, 30
cmovns ax, ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and bl, -63
neg ebx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xor cl, -85
xor di, ax
add sil, 26
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
xor ax, 25554
test bl, cl
xor al, -2
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
xor dl, bl
or eax, 1802312508
neg rbx
test dl, 19
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
bt edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovle rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
xchg eax, ebx
movzx ax, al
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or ax, -15282
add al, -75 # instrumentation
adc al, 79
sub dl, al
imul dx
sub cl, -74
or al, 96
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

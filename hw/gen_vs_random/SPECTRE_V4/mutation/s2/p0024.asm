.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 25554
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
movzx bx, sil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
or al, 109
movzx ax, al
add sil, 110
xchg eax, ebx
cmovns ax, ax
bts si, 30
or ax, -15282
xor al, 59
imul dx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and bl, 26
add al, -75 # instrumentation
adc al, 79
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
cmovle rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
add rdi, -94
xor cl, -101
neg rbx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ebx
test dl, 19
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
xor dl, bl
test bl, cl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
xor di, ax
sub cl, 116
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
sub dl, al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

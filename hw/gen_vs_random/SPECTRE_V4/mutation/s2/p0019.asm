.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
or al, 95
cmovs eax, ecx
add rdi, -94
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
bts si, 30
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor cl, -85
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
imul dx
cmovns ax, ax
add sil, 26
xor al, 69
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
xor di, ax
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
test dl, 19
xor ax, 28088
add al, -75 # instrumentation
adc al, 79
sub dl, al
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovle rdi, rsi
or ax, -15282
and bl, 26
xor dl, bl
movzx bx, sil
test bl, cl
bt edi, ebx
neg rbx
sub cl, 116
or eax, 1802312508
movzx ax, al
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
neg ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

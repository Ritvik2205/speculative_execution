.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmovns ax, ax
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and bl, -63
sub cl, 116
add rdi, -94
xor al, 102
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
or al, 95
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
imul dx
or ax, -12775
xchg eax, ebx
test bl, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
neg rbx
neg ebx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
test dl, 19
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
sub dl, al
movzx ax, al
xor dl, bl
bts si, 30
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmovs eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
xor ax, 25554
xor di, ax
bt edi, ebx
add sil, 110
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or eax, 1802312508
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor cl, -101
cmovle rdi, rsi
add al, -75 # instrumentation
adc al, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

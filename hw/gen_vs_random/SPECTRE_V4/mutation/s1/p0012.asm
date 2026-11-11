.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
and bl, -63
cmovns ax, ax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
or al, 109
xor di, ax
add al, -75 # instrumentation
adc al, 79
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
neg rbx
xor ax, 25554
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
neg ebx
movzx bx, sil
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
xor dl, bl
add rdi, 105
or eax, 1802312508
bts si, 30
movzx ax, al
cmovs eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
xor cl, -54
xor al, 56
or ax, -12775
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
test bl, cl
sub dl, al
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
test dl, 19
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
bt edi, ebx
imul dx
add sil, 110
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
cmovle rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

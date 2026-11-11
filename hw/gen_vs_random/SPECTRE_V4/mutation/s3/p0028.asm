.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 30
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
neg rbx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
xor dl, bl
bt edi, ebx
test dl, 19
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
xchg eax, ebx
xor di, ax
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
xor al, 69
sub cl, -74
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
xor ax, 25554
imul dx
add rdi, 105
add sil, 110
or al, -71
cmovs eax, ecx
or eax, 1802312508
sub dl, al
movzx ax, al
xor cl, -54
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
test bl, cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
cmovns ax, ax
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovle rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
neg ebx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or ax, -12775
add al, -75 # instrumentation
adc al, 79
and bl, 26
movzx bx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

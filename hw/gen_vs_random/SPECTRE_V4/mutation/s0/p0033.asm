.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -12775
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovle rdi, rsi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
movzx ax, al
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
sub dl, al
and bl, 26
neg rbx
xor di, ax
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
movzx bx, sil
sub cl, 116
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
neg ebx
xchg eax, ebx
xor al, 69
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
xor ax, 28088
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
add rdi, -94
or eax, 1802312508
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
test bl, cl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
bts si, 30
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
add sil, 110
or al, 109
test dl, 19
imul dx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xor cl, -54
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovns ax, ax
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
bt edi, ebx
add al, -75 # instrumentation
adc al, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

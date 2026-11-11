.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 110
sub cl, -74
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
xchg eax, ebx
movzx bx, sil
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
xor ax, 28088
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
imul dx
test bl, cl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
test dl, 19
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
neg ebx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
neg rbx
add rdi, -94
add al, -75 # instrumentation
adc al, 79
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
cmovle rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor al, -2
or ax, -12775
and bl, 26
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
movzx ax, al
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xor dl, bl
cmovs eax, ecx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
xor cl, -85
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bts si, 30
xor di, ax
or al, 96
cmovns ax, ax
sub dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
neg ebx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
imul dx
or ax, -12775
add al, -75 # instrumentation
adc al, 79
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
add rdi, -94
cmovns ax, ax
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or eax, 2007177863
xchg eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sub cl, -74
xor al, 56
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
bts si, 30
add sil, 26
and bl, -63
cmovle rdi, rsi
bt edi, ebx
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
movzx ax, al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
xor ax, 25554
xor di, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
xor cl, -101
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
or al, 95
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
movzx bx, sil
test bl, cl
sub dl, al
test dl, 19
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

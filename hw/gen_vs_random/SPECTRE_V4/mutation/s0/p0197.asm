.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ax, ax
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
sub dl, al
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
xor al, 56
xor di, ax
cmovs eax, ecx
xor cl, -85
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
neg rbx
test dl, 19
test bl, cl
movzx bx, sil
xor ax, 25554
bt edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
or al, 95
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
add rdi, -94
and bl, -63
movzx ax, al
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
sub cl, 116
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
or ax, -12775
add al, -75 # instrumentation
adc al, 79
add sil, 26
imul dx
or eax, 2007177863
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor dl, bl
neg ebx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

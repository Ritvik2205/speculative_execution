.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
bts si, 30
and bl, -63
imul dx
add rdi, -94
sub cl, -74
xor cl, -85
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
movzx ax, al
cmovs eax, ecx
bt edi, ebx
add al, -75 # instrumentation
adc al, 79
test dl, 19
or eax, -1434249782
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
or ax, -12775
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
xor dl, bl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
test bl, cl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
xor al, 59
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
xor di, ax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
or al, 109
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add sil, 26
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
xchg eax, ebx
sub dl, al
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor ax, 25554
neg rbx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
cmovns ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
neg ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

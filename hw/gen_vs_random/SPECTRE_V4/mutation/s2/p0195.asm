.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and bl, -63
xchg eax, ebx
cmovle rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
neg ebx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
bts si, 30
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
movzx ax, al
movzx bx, sil
test bl, cl
or eax, 2007177863
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
xor dl, bl
neg rbx
xor al, 69
cmovns ax, ax
or ax, -12775
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
add sil, 26
add rdi, 105
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
xor cl, -85
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor ax, 28088
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmovs eax, ecx
sub dl, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
or al, 109
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
add al, -75 # instrumentation
adc al, 79
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
imul dx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
bt edi, ebx
xor di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

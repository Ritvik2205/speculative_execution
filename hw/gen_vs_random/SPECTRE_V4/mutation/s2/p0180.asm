.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ebx
bt edi, ebx
sub cl, -74
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
bts si, 30
movzx ax, al
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
movzx bx, sil
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
test dl, 19
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
imul dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
sub dl, al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or ax, -12775
xchg eax, ebx
and bl, 26
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
neg rbx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
add sil, 110
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor cl, -85
cmovs eax, ecx
add al, -75 # instrumentation
adc al, 79
test bl, cl
add rdi, -94
or al, 96
xor di, ax
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
cmovns ax, ax
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
xor dl, bl
or eax, 2007177863
cmovle rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
xor al, 102
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
sub cl, -74
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
cmovs eax, ecx
neg rbx
xor di, ax
or eax, 2007177863
add rdi, 105
sub dl, al
or al, 96
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
imul dx
bt edi, ebx
xchg eax, ebx
xor dl, bl
and bl, -63
neg ebx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
add al, -75 # instrumentation
adc al, 79
or ax, -12775
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
add sil, 110
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
bts si, 30
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
movzx ax, al
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
test bl, cl
movzx bx, sil
xor ax, 25554
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
xor al, 59
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmovns ax, ax
test dl, 19
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
